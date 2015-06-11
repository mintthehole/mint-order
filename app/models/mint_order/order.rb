module MintOrder
  class Order < ActiveRecord::Base
    attr_accessible :customer_id, :merchant_id, :status, :total
    has_many :order_items
    has_many :order_notes
    before_create :set_defaults

    validates_presence_of :customer_id
    validates_presence_of :merchant_id
    
    STATES = [
    	NEW = "New",
    	INPROGRESS = "InPorgress",
    	CANCELED = 'Cancelled',
    	COMPLETED = 'Completed'
    ]

    def set_defaults
    	status = NEW
    	total = order_items.collect(&:amount).inject(:+) || 0
    end

  end
end
