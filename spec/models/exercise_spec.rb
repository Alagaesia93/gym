# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe 'validations' do
    subject { build(:exercise) }
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'relations' do
    it { should have_many(:exercise_workouts) }
    it { should have_many(:workouts) }
    it { should have_many(:exercise_trainings) }
    it { should have_many(:trainings) }
  end
end
