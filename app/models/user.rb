class User < ApplicationRecord
  has_many :microposts
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
                    presence: true
  validates :name, presence: true
end
