class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.last(3)
    @topcocktails = Cocktail.last(3)
  end

  def story
  end
end
