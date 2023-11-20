class TrainingsController < ApplicationController
  before_action :set_training, only: %i[ show edit update destroy ]

  def index
    @trainings = Training.all
  end

  def show
  end

  def new
    @training = Training.new
  end

  def edit
  end

  def create
    @training = Training.new(training_params)
    @training.user = current_user

    if @training.save
      redirect_to training_url(@training), notice: "Training was successfully created." 
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @training.update(training_params)
      redirect_to training_url(@training), notice: "Training was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @training.destroy!

    redirect_to trainings_url, notice: "Training was successfully destroyed."
  end

  private
    def set_training
      @training = Training.find(params[:id])
    end

    def training_params
      params.require(:training).permit(:format, :state, :primary_group_id, :support_group_id)
    end
end
