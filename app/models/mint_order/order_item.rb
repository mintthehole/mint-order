module MintOrder
  class OrderItem < ActiveRecord::Base
    belongs_to :order
    attr_accessible :price, :quantity, :product_id
    validates_presence_of :price, :quantity
  end
end
