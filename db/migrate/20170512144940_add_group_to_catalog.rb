class AddGroupToCatalog < ActiveRecord::Migration
  def change
    add_reference :catalogs, :group, index: true, foreign_key: true
  end
end
