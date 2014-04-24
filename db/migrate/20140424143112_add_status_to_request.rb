class AddStatusToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :current_status, :integer
  end
end
