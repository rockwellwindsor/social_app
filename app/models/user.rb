class User < ApplicationRecord
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable, :omniauthable

  # Relationships
  has_many :posts
  has_many :comments
  has_many :social_links
  has_many :spaces

  # Validations

end
