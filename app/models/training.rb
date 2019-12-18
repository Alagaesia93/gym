# frozen_string_literal: true

class Training < ApplicationRecord
  belongs_to :workout
  belongs_to :trainee

  has_many :exercise_trainings
  has_many :exercises, through: :exercise_trainings

  validates_uniqueness_of :trainee_id, scope: %i[date workout_id], message: 'This trainee has already this workout for this day'
end
