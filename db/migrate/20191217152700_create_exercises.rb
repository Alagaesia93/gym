# frozen_string_literal: true

class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.integer :duration, null: false, default: 0

      t.timestamps
    end
  end
end
