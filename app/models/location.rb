class Location < ApplicationRecord
  belongs_to :user
  has_many :items, through: :location_items
end
