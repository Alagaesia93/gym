# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach('exercises.csv', headers: true) do |row|
  Exercise.create(name: row['name'], duration: row['duration'])
end
exercises = Exercise.all
puts 'created exercises'

10.times do
  FactoryBot.create(:trainer)
end
trainers = Trainer.all
puts 'created trainers'

10.times do
  FactoryBot.create(:trainee)
end
trainees = Trainee.all
puts 'created trainees'

10.times do
  FactoryBot.create(:workout, creator: trainers.sample)
end
workouts = Workout.all
puts 'created workouts'

20.times do
  TraineeTrainer.create(trainer: trainers.sample, trainee: trainees.sample)
end
puts 'created trainee trainer'

50.times do
  ExerciseWorkout.create(workout: workouts.sample, exercise: exercises.sample)
end
puts 'created exercise workout'

20.times do
  Training.create(trainee: trainees.sample, workout: workouts.sample, date: (Date.today + rand(1..100).days))
end
puts 'created trainings'
