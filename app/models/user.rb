class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # has_secure_password
  validates :password, length: { minimum: 6 }
end
