# frozen_string_literal: true

class Trainer < ApplicationRecord
  has_many :trainee_trainers
  has_many :trainees, through: :trainee_trainers    
end
