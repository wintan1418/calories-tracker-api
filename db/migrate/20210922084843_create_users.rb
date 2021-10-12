class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.text :photo
      t.string :password_digest
      t.integer :age
      t.string :sex
      t.decimal :present_measure
      t.decimal :current_measure
      t.decimal :proposed_measure
      t.timestamps
    end
  end
end
