# frozen_string_literal: true

class Exercise < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :duration
end
