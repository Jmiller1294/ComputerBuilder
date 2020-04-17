class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :shipping_type
      t.text :shipping_address
      t.string :card_type
      t.string :card_number
      t.belongs_to :user, foreign_key: true
     
      t.timestamps
    end
  end
end
