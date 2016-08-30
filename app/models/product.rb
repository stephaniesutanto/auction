class Product < ActiveRecord::Base
	has_one :bid
	belongs_to :user
	validates :title, :presence => true
	validates :description, :presence => true
	validates :starting_bid, :presence => true
end
