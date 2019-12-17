# frozen_string_literal: true

module Api
  module V1
    class ExerciseWorkoutsController < ApplicationController
      before_action :set_exercise_workout, only: %i[show update destroy]

      # GET /exercise_workouts
      def index
        @exercise_workouts = ExerciseWorkout.all

        render json: @exercise_workouts
      end

      # GET /exercise_workouts/1
      def show
        render json: @exercise_workout
      end

      # POST /exercise_workouts
      def create
        @exercise_workout = ExerciseWorkout.new(exercise_workout_params)

        if @exercise_workout.save
          render json: @exercise_workout, status: :created, location: api_v1_exercise_workout_url(@exercise_workout)
        else
          render json: @exercise_workout.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /exercise_workouts/1
      def update
        if @exercise_workout.update(exercise_workout_params)
          render json: @exercise_workout
        else
          render json: @exercise_workout.errors, status: :unprocessable_entity
        end
      end

      # DELETE /exercise_workouts/1
      def destroy
        @exercise_workout.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_exercise_workout
        @exercise_workout = ExerciseWorkout.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def exercise_workout_params
        params.require(:exercise_workout).permit(:workout_id, :exercise_id)
      end
    end
  end
end
