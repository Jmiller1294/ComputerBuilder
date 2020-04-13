class Computer < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :users, through: :orders
  validates :operating_system, presence: true
  validates :cpu, presence: true
  validates :gpu, presence: true
  validates :motherboard_type, presence: true
  validates :cooling_type, presence: true
  validates :case_size, presence: true
end
