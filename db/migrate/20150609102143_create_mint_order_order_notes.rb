class CreateMintOrderOrderNotes < ActiveRecord::Migration
  def change
    create_table :mint_order_order_notes do |t|
      t.references :order
      t.integer :created_by
      t.text :note

      t.timestamps
    end
    add_index :mint_order_order_notes, :order_id
  end
end
