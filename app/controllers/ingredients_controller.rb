class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    @ingredient.save
    redirect_to
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end