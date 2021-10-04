class Reading < ApplicationRecord
belongs_to :user
validates:first_measure,presence: true, numericality: { only_decimal: true }
validates:second_measure,presence: true, numericality: { only_decimal: true }
validates:third_measure,presence: true, numericality: { only_decimal: true }
end
