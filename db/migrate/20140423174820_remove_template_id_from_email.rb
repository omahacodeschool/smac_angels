class RemoveTemplateIdFromEmail < ActiveRecord::Migration
  def up
    remove_column :emails, :template_id
  end

  def down
  end
end
