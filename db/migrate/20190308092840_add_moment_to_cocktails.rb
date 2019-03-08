class AddMomentToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :moment, :string
  end
end
