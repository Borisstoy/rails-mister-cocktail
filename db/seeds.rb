require 'json'
require 'open-uri'

### INGREDIENTS

# Ingredient.destroy_all

# url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# ingredients_serialized = open(url).read
# ingredients = JSON.parse(ingredients_serialized)

# ingredients['drinks'].each do |ing|
#   Ingredient.create(name: "#{ing.values.first}")
# end

### RECIPES

recipes_serialized = File.read('db/recipes.json')
recipes = JSON.parse(recipes_serialized)

recipes.each do |recipe|
  Cocktail.create(name: "#{recipe.values.first}")
end


