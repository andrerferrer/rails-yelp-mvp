class ReviewsController < ApplicationController
  before_action :new_review, only: %i[new]
  before_action :restaurant_find, only: %i[new]

  def new; end

  def create
    new_review(review_params)
    @review.restaurant = restaurant_find
    if @review.save
      go_to_restaurant
    else
      render :new
    end
  end

  private

  def restaurant_find
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_review
    @review = Review.all
  end

  def find_review
    @review = Review.find(params[:id])
  end

  def new_review(params = {})
    @review = Review.new(params)
  end

  def review_params
    params.require(:review).permit(Review::ATTRIBUTES)
  end

  def go_to_restaurant
    redirect_to restaurant_path(@restaurant)
  end
end
