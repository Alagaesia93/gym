# frozen_string_literal: true

class CreateTrainees < ActiveRecord::Migration[5.2]
  def change
    create_table :trainees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, unique: true

      t.timestamps
    end
  end
end
