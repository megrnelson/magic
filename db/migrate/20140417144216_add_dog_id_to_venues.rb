class AddDogIdToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :dog_id, :integer
  end
end
