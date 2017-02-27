class Post < ApplicationRecord

    # Relationships
    belongs_to :space
    belongs_to :user
end
