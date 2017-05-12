class AddSetToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs, :set, :boolean
  end
end
