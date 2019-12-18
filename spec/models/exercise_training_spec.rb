# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExerciseTraining, type: :model do
  subject { build(:exercise_training) }
  it { should belong_to(:exercise) }
  it { should belong_to(:training) }
  it { should validate_uniqueness_of(:exercise_id).scoped_to(:training_id) }
end
