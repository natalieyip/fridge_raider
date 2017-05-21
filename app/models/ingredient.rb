class Ingredient < ApplicationRecord
	has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def split_ingredients(ingredients)
  	individual_ingredients = ingredients.split(", ")
  	all_ingredients = Ingredient.all
  	individual_ingredients.each do |user_ingredient| 
  		all_ingredients.each do |recipe_ingredients| 
  			if recipe_ingredients.item.include?(user_ingredient)
  				p recipe_ingredients.recipes
  			end 
  		end 
  	end 
  end


end
