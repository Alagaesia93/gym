# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Training, type: :model do
  describe 'relations' do
    subject { build(:training) }
    it { should belong_to(:trainee) }
    it { should belong_to(:workout) }

    it { should have_many(:exercises) }
    it { should have_many(:exercise_trainings) }
  end

  describe 'validations' do
    subject { build(:training) }
    it { should validate_uniqueness_of(:trainee_id).scoped_to(%i[date workout_id]).with_message('This trainee has already this workout for this day') }
  end
end
