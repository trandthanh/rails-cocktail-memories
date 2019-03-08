class AddSeasonToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :season, :string
  end
end
