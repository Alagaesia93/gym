# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trainee, type: :model do
  context 'validations' do
    subject { FactoryBot.build(:trainee) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end

  context 'relations' do
    subject { FactoryBot.build(:trainee) }
    it { should have_many(:trainee_trainers) }
    it { should have_many(:trainers) }

    it { should have_many(:trainings) }
    it { should have_many(:workouts) }
  end
end
 