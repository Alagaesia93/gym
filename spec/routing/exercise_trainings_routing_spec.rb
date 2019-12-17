require "rails_helper"

RSpec.describe ExerciseTrainingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/exercise_trainings").to route_to("exercise_trainings#index")
    end

    it "routes to #show" do
      expect(:get => "/exercise_trainings/1").to route_to("exercise_trainings#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/exercise_trainings").to route_to("exercise_trainings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exercise_trainings/1").to route_to("exercise_trainings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exercise_trainings/1").to route_to("exercise_trainings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exercise_trainings/1").to route_to("exercise_trainings#destroy", :id => "1")
    end
  end
end
