class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address_line_1
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
