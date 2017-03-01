class User < ApplicationRecord

  has_secure_token :api_token

  has_many :posts
  has_many :comments

  validates :username, presence: true
  validates :email, presence: true

end
