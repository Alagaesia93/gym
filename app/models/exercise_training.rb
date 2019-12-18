# frozen_string_literal: true

class ExerciseTraining < ApplicationRecord
  belongs_to :exercise
  belongs_to :training

  validates_uniqueness_of :exercise_id, scope: %i[training_id]
end
