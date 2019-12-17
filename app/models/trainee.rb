# frozen_string_literal: true

class Trainee < ApplicationRecord
  validates_uniqueness_of :email
  validates_presence_of :email
end
