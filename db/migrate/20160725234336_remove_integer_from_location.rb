class RemoveIntegerFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :integer, :string
  end
end
