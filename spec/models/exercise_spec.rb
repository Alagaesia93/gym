# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe 'validations' do
    subject { build(:exercise) }
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
