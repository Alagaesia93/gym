# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Training, type: :model do
  subject { build(:training) }
  it { should belong_to(:trainee) }
  it { should belong_to(:workout) }

  it { should have_many(:exercises) }
  it { should have_many(:exercise_trainings) }
end
