# frozen_string_literal: true

FactoryBot.define do
  factory :exercise_training do
    exercise { Exercise.last || FactoryBot.create(:exercise) }
    training { Training.last || FactoryBot.create(:training) }
    pulse { 0 }
  end
end
