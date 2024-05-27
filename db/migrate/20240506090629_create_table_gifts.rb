class CreateTableGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :table_gifts do |t|
      t.text :found_on
      t.references :wine, foreign_key: true
      t.timestamps
    end
  end
end
