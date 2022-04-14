require "test_helper"

class MenuTest < ActiveSupport::TestCase
  test "should save a menu" do
    restaurant = Restaurant.new
    restaurant.name = "restaurant 1"
    assert restaurant.save, "No saved the restaurant"
    menu = Menu.new
    menu.name = "Menu1"
    menu.description = "some descriptions"
    menu.restaurant_id = restaurant.id
    assert menu.save, "No saved the restaurant"
  end

  test "shouldn't save a menu without restaurant" do
    menu = Menu.new
    menu.name = "Menu1"
    menu.description = "some descriptions"
    assert_not menu.save, "Save a menu without restaurant"
  end
end
