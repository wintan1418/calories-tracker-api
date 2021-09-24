class Reading < ApplicationRecord
belongs_to :user 
validates :meal, :calorie_measure, presence: true
end
