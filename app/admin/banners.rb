ActiveAdmin.register Banner do
index :as => :grid do |banner|

    link_to(image_tag(banner.banner.url(:medium)), admin_banner_path(banner))
  end  
end
