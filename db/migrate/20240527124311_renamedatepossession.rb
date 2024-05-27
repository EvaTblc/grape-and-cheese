class Renamedatepossession < ActiveRecord::Migration[7.0]
  def change
    rename_column :gifts, :date_possession, :datepossession
  end
end
