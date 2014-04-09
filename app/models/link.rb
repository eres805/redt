class Link < ActiveRecord::Base
	belongs_to(:user)

	validates :url, :description, :title, :net_rating, presence: true
	validates :url, uniqueness: true
end