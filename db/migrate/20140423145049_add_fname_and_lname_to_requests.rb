class AddFnameAndLnameToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :fname, :string
    add_column :requests, :lname, :string
  end
end
