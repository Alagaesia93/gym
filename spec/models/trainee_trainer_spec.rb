# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TraineeTrainer, type: :model do
  subject { build(:trainee_trainer) }
  it { should belong_to(:trainee) }
  it { should belong_to(:trainer) }
end
