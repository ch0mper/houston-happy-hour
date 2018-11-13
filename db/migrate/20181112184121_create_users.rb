class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :favorite_drink
      t.integer :age

      t.timestamps
    end
  end
end
