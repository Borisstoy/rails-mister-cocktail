class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show

  end

  private

  def set_cocktails

  end

  def cocktails_params

  end
end
