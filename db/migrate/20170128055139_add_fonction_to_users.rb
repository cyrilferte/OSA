class AddFonctionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fonction, :string
  end
end
