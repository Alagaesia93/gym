# frozen_string_literal: true

class ExerciseWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise
end
