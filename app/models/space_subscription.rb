class SpaceSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :spaces
end
