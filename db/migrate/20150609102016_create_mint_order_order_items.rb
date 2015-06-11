class CreateMintOrderOrderItems < ActiveRecord::Migration
  def change
    create_table :mint_order_order_items do |t|
      t.references :order
      t.references :product
      t.integer :quantity
      t.float :price

      t.timestamps
    end
    add_index :mint_order_order_items, :order_id
    add_index :mint_order_order_items, :product_id
  end
end
