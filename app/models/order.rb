class Order < ApplicationRecord
  belongs_to :user
  belongs_to :computer
  validates :order_date, presence: true
  validates :shipping_type, presence: true
  validates :shipping_address, presence: true
end
