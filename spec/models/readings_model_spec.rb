require 'rails_helper'

RSpec.describe Reading, type: :model do
it {should belong_to(:user) }
it {should validate_presence_of(:first_measure)}
it {should validate_presence_of(:second_measure)}
it {should validate_presence_of(:third_measure)}
it {should validate_numericality_of(:first_measure)}
it {should validate_numericality_of(:second_measure)}
it {should validate_numericality_of(:third_measure)}
it {should validate_presence_of(overall_measure)}
it {should validate_numericality_of(:overall_measure)}
end