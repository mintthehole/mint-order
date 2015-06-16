module MintOrder
  class OrderNote < ActiveRecord::Base
    belongs_to :order
    attr_accessible :created_by, :note
  end
end

