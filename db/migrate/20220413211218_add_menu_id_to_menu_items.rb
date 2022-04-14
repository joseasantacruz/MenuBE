class AddMenuIdToMenuItems < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_items, :menu_id, :integer
    add_index  :menu_items, :menu_id
  end
end
