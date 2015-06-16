module MintOrder
  class OrderItem < ActiveRecord::Base
    belongs_to :order
    attr_accessible :price, :quantity, :product_id, :product_type
    validates_presence_of  :quantity
    before_create :set_price
    belongs_to :product, polymorphic: true
    before_save :set_price

   	def set_price
   		self.price = product.price * self.quantity
   	end

  end
end
