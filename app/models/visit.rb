class Visit < ActiveRecord::Base
	belongs_to :venue
	belongs_to :dog
end
