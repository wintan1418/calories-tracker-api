FactoryBot.define do
  factory :user do
    username { Faker::Username.username }
    email { juwon @bar.com }
    password { foobar }
    present_measure { 7.0 }
    proposed_measure { 8.0 }
  end
end
