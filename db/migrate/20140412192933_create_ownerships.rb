class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :user_id
      t.integer :dog_id

      t.timestamps
    end
  end
end
