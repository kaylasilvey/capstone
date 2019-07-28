class ItemExpiration < ApplicationRecord
  belongs_to :item
  belongs_to :expiration
end
