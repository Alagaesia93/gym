require "rails_helper"

RSpec.describe ExerciseWorkoutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/exercise_workouts").to route_to("exercise_workouts#index")
    end

    it "routes to #show" do
      expect(:get => "/exercise_workouts/1").to route_to("exercise_workouts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/exercise_workouts").to route_to("exercise_workouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exercise_workouts/1").to route_to("exercise_workouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exercise_workouts/1").to route_to("exercise_workouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exercise_workouts/1").to route_to("exercise_workouts#destroy", :id => "1")
    end
  end
end
