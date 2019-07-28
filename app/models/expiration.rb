class Expiration < ApplicationRecord
  has_many :items, through: :item_expirations
end
