class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.first(3)
    @topcocktails = Cocktail.last(3)
  end
end
