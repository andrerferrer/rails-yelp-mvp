class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  before_action :set_restaurants, only: %i[index]
  before_action :new_restaurant, only: %i[new]

  def index; end

  def show; end

  def new; end

  def create
    new_restaurant(restaurant_params)
    if @restaurant.save
      go_to_restaurant
    else
      render :new
    end
  end

  private

  def set_restaurants
    @restaurants = Restaurant.all
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def new_restaurant(params = {})
    @restaurant = Restaurant.new(params)
  end

  def restaurant_params
    params.require(:restaurant).permit(Restaurant::ATTRIBUTES)
  end

  def go_to_restaurant
    redirect_to @restaurant
  end
end
