class AddStakeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :stake, :boolean
  end
end
