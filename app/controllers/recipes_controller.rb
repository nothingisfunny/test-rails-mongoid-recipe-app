class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredient_list_items.build
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to "/"
  end

  private
  def recipe_params
    params.require(:recipe).permit(:id, :name, :description, ingredient_list_items_attributes: [:quantity, :unit, :name])
  end
end
