class RecipesController < ApplicationController
	def index 
	end 

	def show
		@ingredients = params[:ingredients]
	end 
end 