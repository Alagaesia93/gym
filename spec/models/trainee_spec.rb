# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trainee, type: :model do
  context 'validations' do
    subject { FactoryBot.build(:trainee) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end
