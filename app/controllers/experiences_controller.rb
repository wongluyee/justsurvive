class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @experiences = policy_scope(Experience)
  end

  def show
    @experience = Experience.find(params[:id])
    authorize @experience
  end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    authorize @experience
    if @experience.save
      redirect_to experiences_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def experience_params
    params.require(:experience).permit(:title, :location, :category, :price, :description, :user_id)
  end
end
