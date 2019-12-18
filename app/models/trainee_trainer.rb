# frozen_string_literal: true

class TraineeTrainer < ApplicationRecord
  belongs_to :trainee
  belongs_to :trainer

  validates_uniqueness_of :trainee_id, scope: :trainer_id, message: 'The association between this trainer and this trainee already exists'
end
