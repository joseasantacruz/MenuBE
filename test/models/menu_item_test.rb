require "test_helper"

class MenuItemTest < ActiveSupport::TestCase
  test "should save a menu item" do
    menu = Menu.new
    menu.name = "Menu1"
    menu.description = "some descriptions"
    assert menu.save, "No saved the menu"
    menu_item = MenuItem.new
    menu_item.name = "MenuItem 1"
    menu_item.description = "some descriptions"
    menu_item.price = 10
    menu_item.menu_id = menu.id
    assert menu_item.save, "No saved the menu item"
  end
end
