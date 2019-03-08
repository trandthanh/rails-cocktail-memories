class AddPersonToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :person, :string
  end
end
