class RemoveActivationStateFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :activation_state
  end

  def down
    add_column :users, :activation_state, :string
  end
end
