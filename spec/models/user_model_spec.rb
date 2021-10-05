require 'rails_helper'

Rspec.describe User, type: :model do
  it {should have_many(:readings)}
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:age)}
  it {should validate_presence_of(:sex)}
  it {should validate_presence_of(:proposed_measure)}
  it {should validate_presence_of(:present_measure)}
  it {should validate_presence_of(:password)}


end