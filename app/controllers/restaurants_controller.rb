class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by_id(params[:id])
  end

  def search
    @restaurant = Restaurant.find_by_name(name: params[:name])
    redirect_to restaurant_path(@restaurant)
  end


end
