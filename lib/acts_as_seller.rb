module MintOrder
  module ActsAsSeller
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_seller
        has_many :mint_orders, :foreign_key => "merchant_id", :class_name => "::MintOrder::Order"
        has_many :order_notes, :foreign_key => "created_by", :class_name => "::MintOrder::OrderNote"
      end
    end
  end
end

::ActiveRecord::Base.send :include, MintOrder::ActsAsSeller