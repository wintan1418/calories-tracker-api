class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, primary_key: :email, id: false do |t|
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
