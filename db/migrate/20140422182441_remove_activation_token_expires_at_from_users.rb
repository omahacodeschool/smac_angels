class RemoveActivationTokenExpiresAtFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :activation_token_expires_at
  end

  def down
    add_column :users, :activation_token_expires_at, :string
  end
end
