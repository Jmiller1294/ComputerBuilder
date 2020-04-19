class Order < ApplicationRecord
  
  belongs_to :user
  has_many :computers, dependent: :delete_all
  has_many :users, through: :computers


  validates :card_type, presence: true
  validates :card_number, presence: true
  validates :card_number, length: { in: 6..16 }
  validates :shipping_type, presence: true
  validates :shipping_address, presence: true

  def self.last_order
    @order = Order.last
  end
end
