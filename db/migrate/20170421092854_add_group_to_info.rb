class AddGroupToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :group, :string
  end
end
