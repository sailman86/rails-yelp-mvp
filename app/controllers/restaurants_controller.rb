class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  def edit
    @restaurant = find_restaurant
  end

  def update
    @restaurant = find_restaurant
    @restaurant.update(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render "update"
    end

  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
