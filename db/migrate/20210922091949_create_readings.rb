class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.string :meal, null: false
      t.float :calorie_measure, null: false
      t.references :user
      t.string :user_email,foreign_key: true
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
