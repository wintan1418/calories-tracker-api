FactoryBot.define do
  factory :user do
    'user { Faker::User.user }'
    'email { "juwon@me.com" }'
    'password { "juwon" }'
    'present_measure {3.0}'
    'proposed_measure {4.0}'
  end
end
