class Api::V1::RestaurantsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, exept: [:index, :show]

  def index
    if params[:limit].present?
      @restaurants = Restaurant.all.limit(params[:limit])
    else
      @restaurants = Restaurant.all
    end
  end

  # GET /api/v1/restaurants/:id
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

    if @restaurant.save
      render :show, status: :created
    else
      render_errors
    end
  end

  # PATCH | PUT /api/v1/restaurants/:id
  def update
    @restaurant = Restaurant.find(params[:id])
    authorize(@restaurant)

    if @restaurant.update(restaurant_params)
      render :show
    else
      render_errors
    end
  end

  # DELETE /api/v1/restaurants/:id
  def destroy
    @restaurant = Restaurant.find(params[:id])
    authorize(@restaurant)
    @restaurant.destroy

    head :no_content
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def render_errors
    render json: {
      error: @restaurant.errors.full_messages
    }, status: :unprocessable_entity
  end
end
