# frozen_string_literal: true

FactoryBot.define do
  factory :workout do
    name { Faker::Name.name }
    total_duration { 0 }
    state { Workout.states.keys.sample }
    creator { Trainer.last || FactoryBot.create(:trainer) }
  end
end
