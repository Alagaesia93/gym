# frozen_string_literal: true

class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :areas_of_expertise, array: true, default: []

      t.timestamps
    end
  end
end
