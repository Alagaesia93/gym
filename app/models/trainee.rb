# frozen_string_literal: true

class Trainee < ApplicationRecord
  validates_uniqueness_of :email
  validates_presence_of :email

  has_many :trainee_trainers
  has_many :trainers, through: :trainee_trainers
end
