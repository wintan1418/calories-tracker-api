class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.string :meal
      t.float :calorie_measure
      t.refrences :user
      t.datetime :date

      t.timestamps
    end
  end
end
