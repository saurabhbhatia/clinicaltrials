module ActiveAdmin
  module Views

    # Renderer for the header of the application. Includes the page
    # title, global navigation and utility navigation.
    class HeaderRenderer < ::ActiveAdmin::Renderer

      def to_html
        title + global_navigation + utility_navigation
      end

      protected

      def title
        if !active_admin_application.site_title_link || active_admin_application.site_title_link == ""
          content_tag 'h1', active_admin_application.site_title, :id => 'site_title'
        else
          content_tag 'h1', link_to(active_admin_application.site_title, active_admin_application.site_title_link), :id => 'site_title'
        end
      end

      # Renders the global navigation returned by
      # ActiveAdmin::ResourceController#current_menu
      #
      # It uses the ActiveAdmin.tabs_renderer option
      def global_navigation
        render view_factory.global_navigation, current_menu
      end

      def utility_navigation
        content_tag 'p', :id => "utility_nav" do
          if current_active_admin_user?
            html = content_tag(:span, display_name(current_active_admin_user), :class => "current_user")

            if active_admin_application.logout_link_path
              html << link_to(I18n.t('active_admin.logout'), logout_path, :method => logout_method)
            end
          end
        end
      end

      # Returns the logout path from the application settings
      def logout_path
        if active_admin_application.logout_link_path.is_a?(Symbol)
          send(active_admin_application.logout_link_path)
        else
          active_admin_application.logout_link_path
        end
      end

      def logout_method
        active_admin_application.logout_link_method || :get
      end
    end

  end
end
