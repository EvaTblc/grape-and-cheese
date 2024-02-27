class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :vignole
      t.string :color
      t.text :description
      t.string :come_from
      t.integer :year
      t.float :price
      t.references :user
      t.timestamps
    end
  end
end
