class RecipesController < ApplicationController
	def index 
	end 

	def show
		@search_string = params[:ingredients]
  	@results = ApiAdapter.new.search(@search_string)
	end 

end 