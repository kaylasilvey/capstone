class LocationItem < ApplicationRecord
  belongs_to :location
  belongs_to :item
  belongs_to :user
end
