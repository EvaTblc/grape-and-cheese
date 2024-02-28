class AddAlcoholdegreeToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :alcool_degree, :float
  end
end
