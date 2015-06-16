module MintOrder
  module ActsAsSellable
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_sellable price
        has_many :order_item, as: :product, :class_name => "MintOrder::OrderItem"
        alias_attribute :price, price
      end
    end
  end
end

::ActiveRecord::Base.send :include, MintOrder::ActsAsSellable