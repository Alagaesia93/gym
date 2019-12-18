# frozen_string_literal: true

module Api
  module V1
    class TrainingsController < ApplicationController
      before_action :set_training, only: %i[show update destroy]

      # GET /trainings
      def index
        @trainings = if params[:trainee_id].present?
                       Training.where(trainee_id: params[:trainee_id])
                     else
                       Training.all
                     end
        if params[:start_date].present? && params[:end_date].present?
          @trainings = @trainings.where('date BETWEEN ? AND ?', Date.parse(params[:start_date]), Date.parse(params[:end_date]))
        end

        render json: @trainings, methods: :workout
      end

      # GET /trainings/1
      def show
        render json: @training
      end

      # POST /trainings
      def create
        @training = Training.new(training_params)

        if @training.save
          render json: @training, status: :created, location: api_v1_training_url(@training)
        else
          render json: @training.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /trainings/1
      def update
        if @training.update(training_params)
          render json: @training
        else
          render json: @training.errors, status: :unprocessable_entity
        end
      end

      # DELETE /trainings/1
      def destroy
        @training.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_training
        @training = Training.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def training_params
        params.require(:training).permit(:workout_id, :trainee_id, :date)
      end
    end
  end
end
