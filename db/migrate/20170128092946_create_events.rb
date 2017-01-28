class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.float :proba
      t.float :impact
      t.float :fiab
      t.date :date

      t.timestamps
    end
  end
end
