class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.date :date
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
