# frozen_string_literal: true

class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.integer :total_duration, default: 0, null: false
      t.integer :state, default: 0
      t.references :creator, foreign_key: { to_table: :trainers }

      t.timestamps
    end
  end
end
