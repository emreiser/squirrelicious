class RecipesController < ApplicationController
  def index
    if user_signed_in?
      if session[:favorite_recipe]
        new_recipe = session[:favorite_recipe]
        if !current_user.recipes.include? new_recipe
          current_user.recipes << new_recipe
        end
      end
      @recipes = current_user.recipes
    else
      @recipes = []
    end
    render json: @recipes
  end

  def search
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      @recipe
    else
      @recipe = Recipe.find_by_yummlyid(recipe_params[:yummlyid])
    end
    render json: @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe
  end

  def favorite
    if params[:number] != ''
      recipe = Recipe.find(params[:id])
    else
      recipe = Recipe.find_by_yummlyid(params[:id])
    end
    if user_signed_in?
      if current_user.recipes.uniq.include? recipe
        current_user.recipes.delete(recipe)
      else
        current_user.recipes << recipe
      end
      render json: current_user.recipes
    else
      session[:favorite_recipe] = recipe
      render json: {redirect_to: new_user_session_path}
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :imageurl, :ingredientlist, :yummlyid, :url)
  end
end
