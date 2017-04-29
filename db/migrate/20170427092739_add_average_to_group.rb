class AddAverageToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :average, :string
  end
end
