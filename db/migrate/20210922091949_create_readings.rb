class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.string :meal
      t.float :first_measure
      t.float :second_measure
      t.float :third_measure
      t.float :overall_measure
      t.references :user, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true
      t.timestamps
    end
  end
end
