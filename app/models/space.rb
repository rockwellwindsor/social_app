class Space < ApplicationRecord

    # Relationships
    belongs_to :user
    has_many :posts
end
