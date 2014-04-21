class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :requestor_id
      t.integer :angel_id
      t.integer :sockmonkey_id
      t.boolean :obo
      t.boolean :anon_req
      t.boolean :anon_angel
      t.string :ship_address
      t.string :ship_city
      t.string :ship_state
      t.string :ship_zipcode
      t.text :story
      t.string :external_url
      t.string :before_photo_url
      t.string :after_photo_url

      t.timestamps
    end
  end
end
