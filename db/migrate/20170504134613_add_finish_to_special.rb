class AddFinishToSpecial < ActiveRecord::Migration
  def change
    add_column :specials, :finish, :date
  end
end
