class AddPriceOldPriceNewSpecialGiftStakeBarbecueSetToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs, :price_old, :integer
    add_column :catalogs, :price_new, :integer
    add_column :catalogs, :special, :boolean
    add_column :catalogs, :gift, :boolean
    add_column :catalogs, :stake, :boolean
    add_column :catalogs, :barbecue, :boolean
  end
end
