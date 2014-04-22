class RemoveActivationTokenFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :activation_token
  end

  def down
    add_column :users, :activation_token, :string
  end
end
