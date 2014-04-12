class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :venue_id
      t.integer :dog_id
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :status

      t.timestamps
    end
  end
end
