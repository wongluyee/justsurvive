class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show edit update destroy]
  before_action :set_experience, only: %i[new create]
  before_action :authenticate_user!


  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    authorize @review
    @review.experience = @experience
    if @review.save
      redirect_to @experience
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def set_experience
    @experience = Experience.find(params[:experience_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
