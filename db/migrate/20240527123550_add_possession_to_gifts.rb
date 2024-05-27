class AddPossessionToGifts < ActiveRecord::Migration[7.0]
  def change
    add_column :gifts, :possession, :string
    add_column :gifts, :date_possession, :date
  end
end
