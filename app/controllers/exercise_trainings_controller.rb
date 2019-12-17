# frozen_string_literal: true

class ExerciseTrainingsController < ApplicationController
  before_action :set_exercise_training, only: %i[show update destroy]

  # GET /exercise_trainings
  def index
    @exercise_trainings = ExerciseTraining.all

    render json: @exercise_trainings
  end

  # GET /exercise_trainings/1
  def show
    render json: @exercise_training
  end

  # POST /exercise_trainings
  def create
    @exercise_training = ExerciseTraining.new(exercise_training_params)

    if @exercise_training.save
      render json: @exercise_training, status: :created, location: @exercise_training
    else
      render json: @exercise_training.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exercise_trainings/1
  def update
    if @exercise_training.update(exercise_training_params)
      render json: @exercise_training
    else
      render json: @exercise_training.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exercise_trainings/1
  def destroy
    @exercise_training.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_exercise_training
    @exercise_training = ExerciseTraining.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def exercise_training_params
    params.require(:exercise_training).permit(:exercise_id, :training_id, :pulse)
  end
end
