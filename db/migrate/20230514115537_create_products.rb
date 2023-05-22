class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.float :purchase_price
      t.float :tax_rate
      t.string :bin_code
      t.text :description
      t.float :discount
      t.float :selling_price

      t.timestamps
    end
  end
end
