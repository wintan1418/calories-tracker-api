class Reading < ApplicationRecord
belongs_to :user , primary_key: :email, foreign_key: :user_email
validates :meal, :calorie_measure, :user, :date, presence: true
end
