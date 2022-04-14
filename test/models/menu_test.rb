require "test_helper"

class MenuTest < ActiveSupport::TestCase
  test "should save a menu" do
    menu = Menu.new
    menu.name = "Menu1"
    menu.description = "some descriptions"
    assert menu.save, "No saved the menu"
  end
end
