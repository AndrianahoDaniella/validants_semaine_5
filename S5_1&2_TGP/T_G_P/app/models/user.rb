class User < ApplicationRecord
	validates :password, presence: true, length: { minimum: 6 }
	has_many :comments
	has_many :gossips
	has_many :likes
	has_many :private_messages
	belongs_to :city
	has_secure_password

end
