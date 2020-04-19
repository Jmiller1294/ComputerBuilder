class User < ApplicationRecord
    has_many :orders
    has_many :computers
    has_many :ordered_computers, through: :computers, source: :order
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, length: { in: 6..15 }
    has_secure_password

    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.username = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
      end
end
