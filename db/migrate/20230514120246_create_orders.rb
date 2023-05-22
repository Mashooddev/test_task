class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.references :customer, null: false, foreign_key: true, type: :uuid
      t.datetime :placed_at
      t.string :processed_by
      t.datetime :processed_at
      t.date :expected_delivery_date
      t.date :actual_delivery_date
      t.float :sub_total
      t.float :discount
      t.float :tax
      t.float :total_amount

      t.timestamps
    end
  end
end
