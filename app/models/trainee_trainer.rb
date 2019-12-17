# frozen_string_literal: true

class TraineeTrainer < ApplicationRecord
  belongs_to :trainee
  belongs_to :trainer
end
