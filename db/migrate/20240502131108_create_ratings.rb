class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.string :description
      t.integer :votes, default: 0, null: false
      t.references :wine, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
