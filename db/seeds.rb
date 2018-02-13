recipe = Recipe.create(name: "Chicken Wrap", description: "Wash the produce and cut in it bite size pieces. Cook the chicken on the pan until it's golden brown and cooked through. Season chicken with salt and pepper to taste. Reheat wraps in an oven at 170F. Place avocados, tomatos, arugula, chicken, and mandarin wedges on a tortilla, sprinkle with parmesan cheese. Wrap tightly and enjoy!")
ingredient1 = Ingredient.create(name: "Tomato")
ingredient2 = Ingredient.create(name: "Avocado")
ingredient3 = Ingredient.create(name: "Chicken Fillet")
ingredient4 = Ingredient.create(name: "Parmesan Cheese")
ingredient5 = Ingredient.create(name: "Mangarin Orange")
ingredient6 = Ingredient.create(name: "Arugula")

items = IngredientListItem.create([{quantity: 2, unit: "", ingredient: ingredient1},
{quantity: 1, unit: "", ingredient: ingredient2}])

items.each{|item| recipe.ingredient_list_items << item}