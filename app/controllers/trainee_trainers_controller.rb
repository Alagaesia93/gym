class TraineeTrainersController < ApplicationController
  before_action :set_trainee_trainer, only: [:show, :update, :destroy]

  # GET /trainee_trainers
  def index
    @trainee_trainers = TraineeTrainer.all

    render json: @trainee_trainers
  end

  # GET /trainee_trainers/1
  def show
    render json: @trainee_trainer
  end

  # POST /trainee_trainers
  def create
    @trainee_trainer = TraineeTrainer.new(trainee_trainer_params)

    if @trainee_trainer.save
      render json: @trainee_trainer, status: :created, location: @trainee_trainer
    else
      render json: @trainee_trainer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trainee_trainers/1
  def update
    if @trainee_trainer.update(trainee_trainer_params)
      render json: @trainee_trainer
    else
      render json: @trainee_trainer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trainee_trainers/1
  def destroy
    @trainee_trainer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainee_trainer
      @trainee_trainer = TraineeTrainer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trainee_trainer_params
      params.require(:trainee_trainer).permit(:trainee_id, :trainer_id)
    end
end
