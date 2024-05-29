class AddUserToUsergift < ActiveRecord::Migration[7.0]
  def change
    add_reference :usergifts, :user, foreign_key: true
  end
end
