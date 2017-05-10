egg = Ingredient.create(item: "eggs")
mayonnaise = Ingredient.create(item: "mayonnaise")

devil_eggs = Recipe.create(dish_name: "deviled eggs", instructions: "Boil eggs. Take yolk out. Mix with mayonnaise. Squeeze all yolks back in.")

RecipeIngredient.create!(recipe: devil_eggs, ingredient: egg)
RecipeIngredient.create!(recipe: devil_eggs, ingredient: mayonnaise)

avocado = Ingredient.create(item: "avocado")
bread = Ingredient.create(item: "bread")
avocado_toast = Recipe.create(dish_name: "avocado toast", instructions: "Put two breads in toaster. Slice avocado into cubes. Smear onto toast. Fry an egg. Put egg on toast.")

RecipeIngredient.create!(recipe: avocado_toast, ingredient: avocado)
RecipeIngredient.create!(recipe: avocado_toast, ingredient: egg)
RecipeIngredient.create!(recipe: avocado_toast, ingredient: bread)