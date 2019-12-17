# frozen_string_literal: true

class ExerciseTraining < ApplicationRecord
  belongs_to :exercise
  belongs_to :training
end
