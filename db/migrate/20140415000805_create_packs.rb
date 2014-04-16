class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.integer :venue_id
      t.integer :dog_id

      t.timestamps
    end
  end
end
