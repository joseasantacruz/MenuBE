require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should save a restaurant" do
    restaurant = Restaurant.new
    restaurant.name = "restaurant 1"
    assert restaurant.save, "No saved the restaurant"
  end
end
