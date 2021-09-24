class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.text :photo
      t.integer :age
      t.string :sex
      t.timestamps
    end
  end
end
