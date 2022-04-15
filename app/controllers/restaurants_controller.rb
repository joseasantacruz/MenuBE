class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show update destroy ]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  # GET /restaurants/1
  def show
    render json: @restaurant
  end

  # POST /restaurants
  def create
    @json =  []
    if restaurant_params[:restaurants]
      restaurant_params[:restaurants].each do |rest|
        @restaurant = Restaurant.new(name: rest[:name])

        if @restaurant.save
          @json << @restaurant
          if rest[:menus]
            rest[:menus].each do |menus|
              menu = Menu.new(name: menus[:name], restaurant_id: @restaurant.id)
              if menu.save
                @json << menu
                if menus[:menu_items]
                  menus[:menu_items].each do |menu_items|
                    menu_item = MenuItem.new(name: menu_items[:name], price: menu_items[:price], menu_id: menu.id)
                    if menu_item.save
                      @json << menu_item
                    else
                      @json << menu_item.errors
                    end
                  end
                end
                if menus[:dishes]
                  menus[:dishes].each do |menu_items|
                    menu_item = MenuItem.new(name: menu_items[:name], price: menu_items[:price], menu_id: menu.id)
                    if menu_item.save
                      @json << menu_item
                    else
                      @json << menu_item.errors
                    end
                  end
                end
              else
                @json << menu.errors
              end
            end
          end
        else
          @json << @restaurant.errors
        end
      end
    end
    if @json
      render json: @json.to_json, status: :created, location: @restaurant
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
      #params.require(:restaurant).permit(:name)
      params.permit(restaurants: [:name, menus: [:name, menu_items:[:name, :price], dishes:[:name, :price]]])
    end
end
