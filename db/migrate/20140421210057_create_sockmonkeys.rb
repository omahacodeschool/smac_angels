class CreateSockmonkeys < ActiveRecord::Migration
  def change
    create_table :sockmonkeys do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.string :cancertype
      t.string :favcolor

      t.timestamps
    end
  end
end
