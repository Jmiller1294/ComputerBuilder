class Order < ApplicationRecord
  belongs_to :user
  has_many :computers
  has_many :users, through: :computers

  validates :order_date, presence: true
  validates :shipping_type, presence: true
  validates :shipping_address, presence: true
end
