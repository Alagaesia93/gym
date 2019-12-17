# frozen_string_literal: true

class CreateTraineeTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainee_trainers do |t|
      t.references :trainee, foreign_key: true
      t.references :trainer, foreign_key: true

      t.timestamps
    end
  end
end
