class RemoveRemoteImageUrlColumn < ActiveRecord::Migration
  def change
    remove_column :sockmonkeys, :remote_image_url
  end
end
