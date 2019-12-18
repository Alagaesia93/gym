# frozen_string_literal: true

FactoryBot.define do
  factory :trainer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    areas_of_expertise { %i[yoga football ski climbing basketball volleyball calisthenics].sample(2) }
  end
end
