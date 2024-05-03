class RemoveDescriptionAndComeFromFromWines < ActiveRecord::Migration[7.0]
  def change
    remove_column :wines, :description
    remove_column :wines, :come_from
  end
end
