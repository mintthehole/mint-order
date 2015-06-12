module MintOrder
  module ActsAsBuyer
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_buyer
        has_many :mint_orders, :foreign_key => "customer_id", :class_name => "::MintOrder::Order"
      end
    end
  end
end

::ActiveRecord::Base.send :include, MintOrder::ActsAsBuyer