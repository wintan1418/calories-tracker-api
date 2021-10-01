class User < ApplicationRecord 
  has_secure_password
          
  has_many :readings

  


VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :username, presence: true, uniqueness: {case_sensitive: false }
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :sex, presence: true
  validates :age, numericality: {only_integer:true }
  validates :password_digest, presence: true, uniqueness: {case_sensitive: false }
  validates :present_measure,  presence: true
  validates :proposed_measure, presence: true
end