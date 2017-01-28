class AddLvToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :lv, :integer
  end
end
