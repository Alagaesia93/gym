# frozen_string_literal: true

class CreateExerciseWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_workouts do |t|
      t.references :workout, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
