# frozen_string_literal: true

FactoryBot.define do
  factory :training do
    workout { Workout.last || FactoryBot.create(:workout) }
    trainee { Trainee.last || FactoryBot.create(:trainee) }
    date { Date.today }
  end
end
