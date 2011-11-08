class AddBannerColumnsToBanner < ActiveRecord::Migration
  def self.up
    add_column :banners, :banner_file_name,    :string
    add_column :banners, :banner_content_type, :string
    add_column :banners, :banner_file_size,    :integer
    add_column :banners, :banner_updated_at,   :datetime
  end

  def self.down
    remove_column :banners, :banner_file_name,    :string
    remove_column :banners, :banner_content_type, :string
    remove_column :banners, :banner_file_size,    :integer
    remove_column :banners, :banner_updated_at,   :datetime
  end
end
