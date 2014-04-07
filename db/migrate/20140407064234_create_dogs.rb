class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :sex
      t.string :age
      t.string :color
      t.string :weight
      t.integer :breed

      t.timestamps
    end
  end
end
