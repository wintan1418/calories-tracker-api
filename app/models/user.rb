class User < ApplicationRecord
  has_secure_password

  has_many :readings
  has_many :meals

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :sex, presence: true
  validates :age, presence: true
  validates :password_digest, presence: true
  validates :present_measure, presence: true
  validates :proposed_measure, presence: true
end
