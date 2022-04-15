class AddImageUrlToModels < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :image_url, :string
    add_column :menus, :image_url, :string
    add_column :menu_items, :image_url, :string
  end
end
