class AddSetToProduct < ActiveRecord::Migration
  def change
    add_column :products, :set, :boolean
  end
end
