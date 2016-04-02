class Warehouse < ActiveRecord::Base
	has_many :products
	#scope :hello, -> (qnty) {where("qnty > ?", qnty)}	
end
