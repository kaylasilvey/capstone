class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :list_items
  has_many :location_items
  has_many :lists
  has_many :locations
  has_many :items
end
