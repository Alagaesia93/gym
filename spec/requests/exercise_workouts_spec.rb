require 'rails_helper'

RSpec.describe "ExerciseWorkouts", type: :request do
  describe "GET /exercise_workouts" do
    it "works! (now write some real specs)" do
      get exercise_workouts_path
      expect(response).to have_http_status(200)
    end
  end
end
