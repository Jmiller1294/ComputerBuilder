class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :shipping_type
      t.text :shipping_address
      t.references :user, null: false, foreign_key: true
      t.references :computer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
