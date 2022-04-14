require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  test "should save a restaurant" do
    restaurant = Restaurant.new
    restaurant.name = "restaurant 1"
    assert restaurant.save, "No saved the restaurant"
  end
end
