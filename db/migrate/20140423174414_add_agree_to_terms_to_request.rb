class AddAgreeToTermsToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :agree_to_terms, :boolean
  end
end
