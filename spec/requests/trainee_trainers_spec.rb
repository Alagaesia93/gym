# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'TraineeTrainers', type: :request do
  describe 'GET /trainee_trainers' do
    it 'works! (now write some real specs)' do
      get api_v1_trainee_trainers_path
      expect(response).to have_http_status(200)
    end
  end
end
