class AddUserIdOnGifts < ActiveRecord::Migration[7.0]
  def change
    add_reference :table_gifts, :user, foreign_key: true
  end
end
