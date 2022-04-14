require "test_helper"

class MenuItemTest < ActiveSupport::TestCase
  test "should save a menu item" do
    restaurant = Restaurant.new
    restaurant.name = "restaurant 1"
    assert restaurant.save, "No saved the restaurant"
    menu = Menu.new
    menu.name = "Menu1"
    menu.description = "some descriptions"
    menu.restaurant_id = restaurant.id
    assert menu.save, "No saved the menu"
    menu_item = MenuItem.new
    menu_item.name = "MenuItem 1"
    menu_item.description = "some descriptions"
    menu_item.price = 10
    menu_item.menu_id = menu.id
    assert menu_item.save, "No saved the menu item"
  end

  test "shouldn't save a menu item with repeated name" do
    restaurant = Restaurant.new
    restaurant.name = "restaurant 1"
    assert restaurant.save, "No saved the restaurant"
    menu = Menu.new
    menu.name = "Menu1"
    menu.description = "some descriptions"
    menu.restaurant_id = restaurant.id
    assert menu.save, "No saved the menu"
    menu_item = MenuItem.new
    menu_item.name = "MenuItem 1"
    menu_item.description = "some descriptions"
    menu_item.price = 10
    menu_item.menu_id = menu.id
    assert menu_item.save, "No saved the menu item"
    menu_item2 = MenuItem.new
    menu_item2.name = "MenuItem 1"
    menu_item2.description = "some descriptions"
    menu_item2.price = 10
    menu_item2.menu_id = menu.id
    assert_not menu_item2.save, "Saved the menu item with repeated name"
  end
end
