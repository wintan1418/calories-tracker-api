class Reading < ApplicationRecord
belongs_to :user 
validates :meal, :calorie_measure, :first_measure, :second_measure, :third_measure, :overall_measure, presence: true
end
