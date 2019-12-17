# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trainer, type: :model do
  context 'relations' do
    subject { FactoryBot.build(:trainer) }
    it { should have_many(:trainee_trainers) }
    it { should have_many(:trainees) }
  end
end
