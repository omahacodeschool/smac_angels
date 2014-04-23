class AddAvatarToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :avatar, :string
  end
end