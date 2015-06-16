class AddColumnProductTypeToMintOrderOrderItem < ActiveRecord::Migration
  def change
    add_column :mint_order_order_items, :product_type, :string
  end
end
