class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]
  before_action :set_restaurants, only: %i[index]

  def index; end

  def show; end

  def new
  end

  def create
  end

  private
  def set_restaurants
    @restaurants = Restaurant.all
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
