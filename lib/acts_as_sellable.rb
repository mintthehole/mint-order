module Piggybak
  module ActsAsSellable
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_sellable
        has_one :order_item, :foreign_key => "product_id", :class_name => "::MintOrder::Order"

      end
    end
  end
end

::ActiveRecord::Base.send :include, MintOrder::ActsAsSellable