class User < ApplicationRecord
	belongs_to :city, optional: true
	has_many :gossips
	has_and_belongs_to_many :private_message
end
