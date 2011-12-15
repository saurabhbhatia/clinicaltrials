module ActiveAdmin

  class ResourceMismatchError < StandardError; end

  # Namespaces are the basic organizing principle for resources within Active Admin
  #
  # Each resource is registered into a namespace which defines:
  #   * the namespaceing for routing
  #   * the module to namespace controllers
  #   * the menu which gets displayed (other resources in the same namespace)
  #
  # For example:
  #   
  #   ActiveAdmin.register Post, :namespace => :admin
  #
  # Will register the Post model into the "admin" namespace. This will namespace the
  # urls for the resource to "/admin/posts" and will set the controller to
  # Admin::PostsController
  #
  # You can also register to the "root" namespace, which is to say no namespace at all.
  #
  #   ActiveAdmin.register Post, :namespace => false
  #
  # This will register the resource to an instantiated namespace called :root. The 
  # resource will be accessible from "/posts" and the controller will be PostsController.
  #
  class Namespace

    RegisterEvent = 'active_admin.namespace.register'.freeze

    attr_reader :application, :resources, :name, :menu

    def initialize(application, name)
      @application = application
      @name = name.to_s.underscore.to_sym
      @resources = {}
      @menu = Menu.new
      register_module unless root?
      generate_dashboard_controller
    end

    # Register a resource into this namespace. The preffered method to access this is to 
    # use the global registration ActiveAdmin.register which delegates to the proper 
    # namespace instance.
    def register(resource, options = {}, &block)
      config = find_or_build_resource(resource, options)

      # Register the resource
      register_resource_controller(config)
      parse_registration_block(config, &block) if block_given?
      register_with_menu(config) if config.include_in_menu?

      # Ensure that the dashboard is generated
      generate_dashboard_controller

      # Dispatch a registration event
      ActiveAdmin::Event.dispatch ActiveAdmin::Resource::RegisterEvent, config

      # Return the config
      config
    end

    def root?
      name == :root
    end

    # Returns the name of the module if required. Will be nil if none
    # is required.
    #
    # eg: 
    #   Namespace.new(:admin).module_name # => 'Admin'
    #   Namespace.new(:root).module_name # => nil
    #
    def module_name
      return nil if root?
      @module_name ||= name.to_s.camelize
    end

    # Returns the name of the dashboard controller for this namespace
    def dashboard_controller_name
      [module_name, "DashboardController"].compact.join("::")
    end

    # Unload all the registered resources for this namespace
    def unload!
      unload_resources!
      unload_dashboard!
      unload_menu!
    end

    # The menu gets built by Active Admin once all the resources have been
    # loaded. This method gets called to register each resource with the menu system.
    def load_menu!
      register_dashboard
      resources.values.each do |config|
        register_with_menu(config) if config.include_in_menu?
      end
    end

    # Returns the first registered ActiveAdmin::Resource instance for a given class
    def resource_for(klass)
      actual = resources.values.find{|config| config.resource == klass }
      return actual if actual

      if klass.respond_to?(:base_class)
        base_class = klass.base_class
        resources.values.find{|config| config.resource == base_class }
      else
        nil
      end
    end

    protected

    # Either returns an existing Resource instance or builds a new
    # one for the resource and options
    def find_or_build_resource(resource_class, options)
      resource = Resource.new(self, resource_class, options)

      # If we've already registered this resource, use the existing
      if @resources.has_key? resource.camelized_resource_name
        existing_resource = @resources[resource.camelized_resource_name]

        if existing_resource.resource != resource_class
          raise ActiveAdmin::ResourceMismatchError, 
            "Tried to register #{resource_class} as #{resource.camelized_resource_name} but already registered to #{resource.resource}"
        end

        resource = existing_resource
      else
        @resources[resource.camelized_resource_name] = resource
      end

      resource
    end

    def unload_resources!
      resources.each do |name, config|
        parent = (module_name || 'Object').constantize
        const_name = config.controller_name.split('::').last
        # Remove the const if its been defined
        parent.send(:remove_const, const_name) if parent.const_defined?(const_name)
      end
      @resources = {}
    end

    def unload_dashboard!
      # TODO: Only clear out my sections
      Dashboards.clear_all_sections!
    end

    def unload_menu!
      @menu = Menu.new
    end

    # Creates a ruby module to namespace all the classes in if required
    def register_module
      eval "module ::#{module_name}; end"
    end

    def register_resource_controller(config)
      eval "class ::#{config.controller_name} < ActiveAdmin::ResourceController; end"
      config.controller.active_admin_config = config
    end

    def dsl
      @dsl ||= DSL.new
    end

    def parse_registration_block(config, &block)
      dsl.run_registration_block(config, &block)
    end

    # Creates a dashboard controller for this config
    def generate_dashboard_controller
      eval "class ::#{dashboard_controller_name} < ActiveAdmin::Dashboards::DashboardController; end"
    end

    # Adds the dashboard to the menu
    def register_dashboard
      dashboard_path = root? ? :dashboard_path : "#{name}_dashboard_path".to_sym
      menu.add(I18n.t("active_admin.dashboard"), dashboard_path, 1) unless menu[I18n.t("active_admin.dashboard")]
    end

    # Does all the work of registernig a config with the menu system
    def register_with_menu(config)
      # The menu we're going to add this resource to
      add_to = menu

      # Adding as a child
      if config.parent_menu_item_name
        # Create the parent if it doesn't exist
        menu.add(config.parent_menu_item_name, '#') unless menu[config.parent_menu_item_name]
        add_to = menu[config.parent_menu_item_name]
      end

      # Check if this menu item has already been created
      if add_to[config.menu_item_name]
        # Update the url if it's already been created
        add_to[config.menu_item_name].url = config.route_collection_path
      else
        add_to.add(config.menu_item_name, config.route_collection_path, config.menu_item_priority, { :if => config.menu_item_display_if })
      end
    end
  end
end
