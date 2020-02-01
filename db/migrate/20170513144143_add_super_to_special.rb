class AddSuperToSpecial < ActiveRecord::Migration
  def change
    add_column :specials, :super, :boolean
  end
end
