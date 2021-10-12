FactoryBot.define do
  factory :reading do
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
    first { Faker::Lorem.number(6.5) }
    second { Faker::Lorem.number(6.5) }
    third { Faker::Lorem.number(33) }
    proposed_measure { Faker::Lorem.number(6.0) }
    present_measure { Faker::Lorem.number(35) }
    overall_measure { Faker::Lorem.number(6.5) }
  end
end
