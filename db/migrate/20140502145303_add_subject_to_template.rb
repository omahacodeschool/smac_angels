class AddSubjectToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :subject, :string
  end
end
