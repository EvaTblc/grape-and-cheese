class AddDescriptionToWine < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :description, :text
  end
end
