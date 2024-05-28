class AddQuantityToGift < ActiveRecord::Migration[7.0]
  def change
    add_column :gifts, :quantity, :integer
  end
end
