class Dog < ActiveRecord::Base
	has_many :ownerships
    has_many :users, through: :ownerships
    has_many :visits
    has_many :venues, through: :visits
    has_many :packs
    has_many :venues, through: :packs
end
