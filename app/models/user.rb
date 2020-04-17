class User < ApplicationRecord
    has_many :orders
    has_many :computers
    has_many :ordered_computers, through: :computers, source: :order
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, length: { in: 6..15 }
    has_secure_password
end
