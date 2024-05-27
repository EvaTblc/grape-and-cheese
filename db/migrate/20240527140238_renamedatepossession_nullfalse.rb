class RenamedatepossessionNullfalse < ActiveRecord::Migration[7.0]
  def change
    remove_column :gifts, :datepossession
  end
end
