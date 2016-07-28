class RemoveMaxSlotsFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :max_slots, :string
  end
end
