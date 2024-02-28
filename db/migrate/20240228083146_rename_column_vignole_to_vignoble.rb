class RenameColumnVignoleToVignoble < ActiveRecord::Migration[7.0]
  def change
    rename_column :wines, :vignole, :vignoble
  end
end
