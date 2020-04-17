class Order < ApplicationRecord
  belongs_to :user
  has_many :computers
  has_many :users, through: :computers


  validates :card_type, presence: true
  validates :card_number, presence: true
  validates :card_number, length: { in: 10..16 }
  validates :shipping_type, presence: true
  validates :shipping_address, presence: true
end
