class PrivateMessage < ApplicationRecord

	belongs_to :user, optional: true
	has_many :user

end
