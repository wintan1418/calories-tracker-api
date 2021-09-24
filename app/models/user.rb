class User < ApplicationRecord
  has_many :readings


VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :username, presence: true, uniqueness: {case_sensitive: false }
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :sex, presence: true
  validates :age, numericality: {only_integer:true }
end