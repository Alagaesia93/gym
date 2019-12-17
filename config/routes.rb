# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :exercise_trainings
      resources :trainings
      resources :exercise_workouts
      resources :exercises
      resources :workouts
      resources :trainee_trainers
      resources :trainees
      resources :trainers
    end
  end
end
