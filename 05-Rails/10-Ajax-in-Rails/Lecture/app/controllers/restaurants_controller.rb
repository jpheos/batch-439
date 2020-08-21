class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    respond_to do |format|
      format.html {}
      format.json { render json: @restaurants }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.order(created_at: :desc)
    @review = Review.new
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to restaurants_path
  end
end
