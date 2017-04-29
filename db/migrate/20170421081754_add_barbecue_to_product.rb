class AddBarbecueToProduct < ActiveRecord::Migration
  def change
    add_column :products, :barbecue, :boolean
  end
end
