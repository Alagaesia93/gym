# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ExerciseTrainings', type: :request do
  describe 'GET /exercise_trainings' do
    it 'works! (now write some real specs)' do
      get api_v1_exercise_trainings_path
      expect(response).to have_http_status(200)
    end
  end
end
