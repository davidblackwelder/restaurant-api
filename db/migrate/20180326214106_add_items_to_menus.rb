class AddItemsToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :item_id, :integer
  end
end
