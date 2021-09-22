class User < ApplicationRecord
  self.primary_key = 'email'
  has_many :readings, foreign_key: :user_email


VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :username, presence: true, uniqueness: {case_sensitive: false }
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
end