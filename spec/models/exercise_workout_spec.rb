# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExerciseWorkout, type: :model do
  subject { build(:exercise_workout) }
  it { should belong_to(:exercise) }
  it { should belong_to(:workout) }
end
