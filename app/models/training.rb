# frozen_string_literal: true

class Training < ApplicationRecord
  belongs_to :workout
  belongs_to :trainee

  has_many :exercise_trainings
  has_many :exercises, through: :exercise_trainings
end
