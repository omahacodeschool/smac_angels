class AddRemoteImageUrlToSockmonkeys < ActiveRecord::Migration
  def change
    add_column :sockmonkeys, :remote_image_url, :string
  end
end
