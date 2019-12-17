# frozen_string_literal: true

class Workout < ApplicationRecord
  belongs_to :creator, class_name: 'Trainer'

  validates_presence_of :name
  validates_uniqueness_of :name, scope: :creator_id
  validates_presence_of :total_duration

  enum state: %i[draft published]

  before_save :set_default

  def set_default
    self.state ||= 'draft'
  end
end
