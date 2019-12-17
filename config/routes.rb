# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trainings
  resources :exercise_workouts
  resources :exercises
  resources :workouts
  resources :trainee_trainers
  resources :trainees
  resources :trainers
end
