# frozen_string_literal: true

class CreateExerciseTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_trainings do |t|
      t.references :exercise, foreign_key: true
      t.references :training, foreign_key: true
      t.integer :pulse

      t.timestamps
    end
  end
end
