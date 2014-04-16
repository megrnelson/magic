class Venue < ActiveRecord::Base
	has_many :packs
	has_many :dogs, through: :packs
	has_many :visits
	has_many :dogs, through: :visits
end
