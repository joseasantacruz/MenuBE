class AddRestaurantIdToMenus < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :restaurant_id, :integer
    add_index  :menus, :restaurant_id
  end
end
