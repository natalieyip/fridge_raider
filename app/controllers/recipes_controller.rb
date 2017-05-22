class RecipesController < ApplicationController
	def index 
	end 

	def show
		@ingredients = params[:ingredients].split(", ")
		@all_ingredients = Ingredient.all
	end 

end 