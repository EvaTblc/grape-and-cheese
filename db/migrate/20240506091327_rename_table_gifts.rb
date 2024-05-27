class RenameTableGifts < ActiveRecord::Migration[7.0]
  def change
    rename_table :table_gifts, :gifts
  end
end
