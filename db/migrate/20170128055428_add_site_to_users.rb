class AddSiteToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :site, :string
  end
end
