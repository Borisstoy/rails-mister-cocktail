require 'json'
require 'open-uri'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients['drinks'].each do |ing|
  Ingredient.create(name: "#{ing.values.first}")
end
