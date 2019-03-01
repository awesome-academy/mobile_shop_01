class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :phone
      t.string :email
      t.string :name
      t.string :password
      t.string :role
      t.string :address
      t.string :money

      t.timestamps
    end
  end
end
