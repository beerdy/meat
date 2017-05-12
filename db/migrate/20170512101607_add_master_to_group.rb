class AddMasterToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :master, :boolean
  end
end
