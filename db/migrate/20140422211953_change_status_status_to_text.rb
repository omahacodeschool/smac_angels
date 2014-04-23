class ChangeStatusStatusToText < ActiveRecord::Migration
  def up
    change_column :statuses, :status, :text
  end

  def down
    change_column :statuses, :status, :string
  end
end
