class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :shipping_type
      t.text :shipping_address
      t.belongs_to :user, foreign_key: true
     
      t.timestamps
    end
  end
end
