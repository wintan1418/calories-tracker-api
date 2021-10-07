require 'rails_helper'

RSpec.describe Reading, type: :model do
  it { should belongs_to(:user) }
  it { should validates_presence_of(:first_measure) }
  it { should validates_presence_of(:second_measure) }
  it { should validates_presence_of(:third_measure) }
  it { should validates_numericality_of(:first_measure) }
  it { should validates_numericality_of(:second_measure) }
  it { should validates_numericality_of(:third_measure) }
  it { should validates_presence_of(overall_measure) }
  it { should validates_numericality_of(:overall_measure)}
end
