class User < ApplicationRecord
    has_many :computers
    has_many :orders
    has_many :ordered_computers, through: :orders, source: :computer
end
