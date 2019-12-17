class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.references :workout, foreign_key: true
      t.references :trainee, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
