class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :request_id
      t.string :status

      t.timestamps
    end
  end
end
