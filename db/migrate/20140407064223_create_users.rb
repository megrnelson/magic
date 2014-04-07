class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :insurance
      t.integer :membership
      t.integer :role

      t.timestamps
    end
  end
end
