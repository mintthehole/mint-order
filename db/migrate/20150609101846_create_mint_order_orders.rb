class CreateMintOrderOrders < ActiveRecord::Migration
  def change
    create_table :mint_order_orders do |t|
      t.integer :merchant_id
      t.integer :customer_id
      t.float :total
      t.string :status

      t.timestamps
    end
  end
end
