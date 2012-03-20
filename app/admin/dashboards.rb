ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  section "Recent Banners" do  
    table_for Banner.order("created_at desc").limit(5) do  
      column :title
    end  
    strong { link_to "View All Banners", admin_banners_path }  
  end   

  section "Recently Created Downloads" do
    table_for Download.order("created_at desc").limit(5) do
      column :title
      column :attachment_file_name
      column :download_type
    end
    strong { link_to "View All Downloads", admin_downloads_path }
  end

  section "Recent Drug Infos" do
    table_for DrugInfo.order("created_at desc").limit(5) do
      column :title
    end
    strong { link_to "View All Drug Info", admin_drug_infos_path }
  end

  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
