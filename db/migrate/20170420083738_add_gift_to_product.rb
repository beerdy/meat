class AddGiftToProduct < ActiveRecord::Migration
  def change
    add_column :products, :gift, :boolean, default: false
  end
end
