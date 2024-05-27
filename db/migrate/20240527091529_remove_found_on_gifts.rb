class RemoveFoundOnGifts < ActiveRecord::Migration[7.0]
  def change
    remove_column :gifts, :found_on
  end
end
