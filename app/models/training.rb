# frozen_string_literal: true

class Training < ApplicationRecord
  belongs_to :workout
  belongs_to :trainee
end
