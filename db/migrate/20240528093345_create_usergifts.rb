class CreateUsergifts < ActiveRecord::Migration[7.0]
  def change
    create_table :usergifts do |t|
      t.references :gift, foreign_key: true
      t.references :gifter, foreign_key: { to_table: "users" }
      t.timestamps
    end
  end
end
