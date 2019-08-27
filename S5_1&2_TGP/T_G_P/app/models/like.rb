class Like < ApplicationRecord

	belongs_to :user, optional: true
	has_many :gossips
	
end