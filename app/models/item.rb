class Item < ApplicationRecord
  belongs_to :user
  has_many :item_expirations
  has_many :location_items
  has_many :list_items

  has_many :expiration_dates, through: :item_expirations
  has_many :grocery_lists, through: :list_items
  has_many :locations, through: :location_items
end
