class CreateOrderLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_line_items, id: :uuid do |t|
      t.references :order, null: false, foreign_key: true, type: :uuid
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.integer :quantity
      t.float :unit_price
      t.float :price

      t.timestamps
    end
  end
end
