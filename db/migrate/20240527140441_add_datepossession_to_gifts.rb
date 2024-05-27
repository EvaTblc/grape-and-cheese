class AddDatepossessionToGifts < ActiveRecord::Migration[7.0]
  def change
    add_column :gifts, :datepossession, :date
  end
end
