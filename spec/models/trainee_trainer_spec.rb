# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TraineeTrainer, type: :model do
  context 'validations' do
    subject { FactoryBot.build(:trainee_trainer) }
    it { should validate_uniqueness_of(:trainee_id).scoped_to(:trainer_id).with_message('The association between this trainer and this trainee already exists') }
  end

  context 'relationships' do
    subject { FactoryBot.build(:trainee_trainer) }
    it { should belong_to(:trainee) }
    it { should belong_to(:trainer) }
  end
end
