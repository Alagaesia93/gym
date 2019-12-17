# frozen_string_literal: true

FactoryBot.define do
  factory :exercise do
    name { Faker::Name.name }
    duration { Faker::Number.number(digits: 4) }
  end
end
