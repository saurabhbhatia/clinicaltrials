module ActiveAdmin

  #
  # The Active Admin DSL. This class is where all the registration blocks
  # are instance eval'd. This is the central place for the API given to 
  # users of Active Admin
  #
  class DSL

    # Runs the registration block inside this object
    def run_registration_block(config, &block)
      @config = config
      instance_eval &block
    end

    private

    # The instance of ActiveAdmin::Resource that's being registered
    # currently. You can use this within your registration blocks to
    # modify options:
    #
    # eg:
    #   
    #   ActiveAdmin.register Post do
    #     config.admin_notes = false
    #   end
    #
    def config
      @config
    end

    # Returns the controller for this resource. If you pass a
    # block, it will be eval'd in the controller
    #
    # Example:
    #   
    #   ActiveAdmin.register Post do
    #
    #     controller do
    #       def some_method_on_controller
    #         # Method gets added to Admin::PostsController
    #       end
    #     end
    #
    #   end
    #
    def controller(&block)
      @config.controller.class_eval(&block) if block_given?
      @config.controller
    end

    def belongs_to(target, options = {})
      config.belongs_to(target, options)
    end

    def menu(options = {})
      config.menu(options)
    end

    # Scope this controller to some object which has a relation
    # to the resource. Can either accept a block or a symbol 
    # of a method to call.
    #
    # Eg:
    #
    #   ActiveAdmin.register Post do
    #     scope_to :current_user
    #   end
    #
    # Then every time we instantiate and object, it would call
    #   
    #   current_user.posts.build
    #
    # By default Active Admin will use the resource name to build a
    # method to call as the association. If its different, you can 
    # pass in the association_method as an option.
    #
    #   scope_to :current_user, :association_method => :blog_posts
    #
    # will result in the following
    # 
    #   current_user.blog_posts.build
    #
    def scope_to(*args, &block)
      options = args.extract_options!
      method = args.first

      config.scope_to = block_given? ? block : method
      config.scope_to_association_method = options[:association_method]
    end

    # Create a scope
    def scope(*args, &block)
      config.scope(*args, &block)
    end

    # Add a new action item to the resource
    #
    # @param [Hash] options valid keys include:
    #                 :only:  A single or array of controller actions to display
    #                         this action item on.
    #                 :except: A single or array of controller actions not to
    #                          display this action item on.
    def action_item(options = {}, &block)
      config.add_action_item(options, &block)
    end

    # Configure the index page for the resource
    def index(options = {}, &block)
      options[:as] ||= :table
      controller.set_page_config :index, options, &block
    end

    # Configure the show page for the resource
    def show(options = {}, &block)
      # TODO: controller.set_page_config just sets page_configs on the Resource (config) obj
      controller.set_page_config :show, options, &block
    end

    def form(options = {}, &block)
      options[:block] = block
      controller.form_config = options
    end

    def sidebar(name, options = {}, &block)
      config.sidebar_sections << ActiveAdmin::SidebarSection.new(name, options, &block)
    end

    # Configure the CSV format
    #
    # For example:
    #
    #   csv do
    #     column :name
    #     column("Author") { |post| post.author.full_name }
    #   end
    #
    def csv(&block)
      config.csv_builder = CSVBuilder.new(&block)
    end

    # Member Actions give you the functionality of defining both the
    # action and the route directly from your ActiveAdmin registration
    # block.
    #
    # For example:
    #
    #   ActiveAdmin.register Post do
    #     member_action :comments do
    #       @post = Post.find(params[:id]
    #       @comments = @post.comments
    #     end
    #   end
    #
    # Will create a new controller action comments and will hook it up to
    # the named route (comments_admin_post_path) /admin/posts/:id/comments
    #
    # You can treat everything within the block as a standard Rails controller
    # action.
    # 
    def member_action(name, options = {}, &block)
      config.member_actions << ControllerAction.new(name, options)
      controller do
        define_method(name, &block || Proc.new{})
      end
    end

    def collection_action(name, options = {}, &block)
      config.collection_actions << ControllerAction.new(name, options)
      controller do
        define_method(name, &block || Proc.new{})
      end
    end

    # Defined Callbacks
    #
    # == After Build
    # Called after the resource is built in the new and create actions.
    #
    # ActiveAdmin.register Post do
    #   after_build do |post|
    #     post.author = current_user
    #   end
    # end
    #
    # == Before / After Create
    # Called before and after a resource is saved to the db on the create action.
    #
    # == Before / After Update
    # Called before and after a resource is saved to the db on the update action.
    #
    # == Before / After Save
    # Called before and after the object is saved in the create and update action.
    # Note: Gets called after the create and update callbacks
    #
    # == Before / After Destroy
    # Called before and after the object is destroyed from the database.
    #
    delegate :before_build,   :after_build,   :to => :controller
    delegate :before_create,  :after_create,  :to => :controller
    delegate :before_update,  :after_update,  :to => :controller
    delegate :before_save,    :after_save,    :to => :controller
    delegate :before_destroy, :after_destroy, :to => :controller

    # Filters
    delegate :filter, :to => :controller


    # Standard rails filters
    delegate :before_filter, :skip_before_filter, :after_filter, :around_filter, :to => :controller

    # Specify which actions to create in the controller
    #
    # Eg:
    #   
    #   ActiveAdmin.register Post do
    #     actions :index, :show
    #   end
    #
    # Will only create the index and show actions (no create, update or delete)
    delegate :actions, :to => :controller

  end
end
