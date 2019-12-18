# frozen_string_literal: true

class Exercise < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :duration

  has_many :exercise_workouts
  has_many :workouts, through: :exercise_workouts

  has_many :exercise_trainings
  has_many :trainings, through: :exercise_trainings
end
