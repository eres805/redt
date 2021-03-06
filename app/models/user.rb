class User < ActiveRecord::Base
	has_secure_password
	has_many :links

	validates :name, :email, :password, presence: true
	validates :email, uniqueness: true
end