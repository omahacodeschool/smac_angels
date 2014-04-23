class FixFnameName < ActiveRecord::Migration
  def change
    rename_column :requests, :fname, :obo_fname
    rename_column :requests, :lname, :obo_lname
  end
end
