class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :request_id
      t.text :content
      t.integer :template_id
      t.string :to_addresses

      t.timestamps
    end
  end
end
