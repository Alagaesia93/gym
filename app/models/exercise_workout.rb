# frozen_string_literal: true

class ExerciseWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise

  delegate :duration, to: :exercise

  counter_culture :workout,
                  column_name: 'total_duration',
                  delta_column: 'duration'
end
