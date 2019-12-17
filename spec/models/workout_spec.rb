# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Workout, type: :model do
  context 'relations' do
    subject { FactoryBot.build(:workout) }
    it { should belong_to(:creator) }
  end

  describe 'validations' do
    subject { FactoryBot.build(:workout) }
    it { should validate_presence_of(:total_duration) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:creator_id) }
    it { should define_enum_for(:state) }

    it 'should be draft as default' do
      w = FactoryBot.build(:workout, state: nil)
      w.save
      expect(w.state).to eq 'draft'
    end
  end
end
