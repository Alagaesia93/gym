# frozen_string_literal: true

module Api
  module V1
    class TraineesController < ApplicationController
      before_action :set_trainee, only: %i[show update destroy]

      # GET /trainees
      def index
        @trainees = Trainee.all

        render json: @trainees
      end

      # GET /trainees/1
      def show
        render json: @trainee
      end

      # POST /trainees
      def create
        @trainee = Trainee.new(trainee_params)

        if @trainee.save
          render json: @trainee, status: :created, location: api_v1_trainee_url(@trainee)
        else
          render json: @trainee.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /trainees/1
      def update
        if @trainee.update(trainee_params)
          render json: @trainee
        else
          render json: @trainee.errors, status: :unprocessable_entity
        end
      end

      # DELETE /trainees/1
      def destroy
        @trainee.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_trainee
        @trainee = Trainee.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def trainee_params
        params.require(:trainee).permit(:first_name, :last_name, :email)
      end
    end
  end
end
