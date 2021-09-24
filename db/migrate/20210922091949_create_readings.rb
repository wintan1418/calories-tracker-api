class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.string :meal
      t.references :user, null: false, foreign_key: true
      t.float :calorie_measure, null: false
      t.timestamps
    end
  end
end
