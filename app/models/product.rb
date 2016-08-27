class Product < ActiveRecord::Base
	has_one :bid
	belongs_to :user
end
