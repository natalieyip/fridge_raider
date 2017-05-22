class Ingredient < ApplicationRecord
	has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def count_ingredients(user_ingredients)
  	split_ingredients = user_ingredients.split(", ")
  	count = 0 
  	recipes = Recipe.all 
  	recipes.each do |rec| 
  		rec.ingredients.each do |ingredient| 
  			if split_ingredients.include?(ingredient.item)
  				count += 1
  			end 
  		end 
  	end 
  	count 
  end


end

  	# if recipe contains at least three of the ingredients the user inputted, 
  	# list those recipes that contain them
  	# stretch if display recipes is less than three, 
  	# list ingredients that only contain two of the items
