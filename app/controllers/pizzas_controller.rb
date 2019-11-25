class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find_by_id(params[:id])
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    pizza = Pizza.new(strong_params)
    if pizza.save
      redirect_to pizza_path(pizza)
    else
      @messages = flash[:error]
      redirect_to new_pizza_path
    end
  end



  private

  def strong_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end



end
