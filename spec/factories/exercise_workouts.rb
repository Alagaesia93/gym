# frozen_string_literal: true

FactoryBot.define do
  factory :exercise_workout do
    workout { Workout.last || FactoryBot.create(:workout) }
    exercise { Exercise.last || FactoryBot.create(:exercise) }
  end
end
