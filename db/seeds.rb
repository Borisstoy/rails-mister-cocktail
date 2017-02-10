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

photos = [
"http://cdn.gearpatrol.com/wp-content/uploads/2016/05/gear-patrol-cocktails-somoroff-lead-cinematic2.jpg",
"http://www.seriouseats.com/recipes/assets_c/2016/09/20160901-old-timber-cocktail-vicky-wasik-2-thumb-1500xauto-434052.jpg",
"http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg",
"http://www.thechameleonbham.co.uk/website/wp-content/uploads/2016/07/cocktail.jpg",
"http://del.h-cdn.co/assets/15/38/980x490/landscape-1442433762-delish-halloween-cocktails-index.png",
"https://www.danmurphys.com.au/media/DM/Media/static/LiquorLibrary/09Cocktails/DepartmentPageRowHeroBanner/rum_cocktail_splash_dp-row-hero.jpg",
"https://search.chow.com/thumbnail/800/600/www.chowstatic.com/assets/2015/03/10332_RecipeImage_affinity_cocktail.jpg",
"http://f.tqn.com/y/cocktails/1/S/7/w/-/-/Tequila-Sunrise-001.jpg",
"http://blog.themancompany.com/wp-content/uploads/2015/12/the-33-best-cocktail-bars-in-the-country.jpg",
"http://www.allcocktails.net/gallery/pink-gin-cocktail/pink-gin-cocktail.jpg",
"http://pad2.whstatic.com/images/thumb/1/13/Make-a-Sex-on-the-Beach-Cocktail-Step-5.jpg/aid265761-728px-Make-a-Sex-on-the-Beach-Cocktail-Step-5.jpg",
"http://www.domainehudson.com/wp-content/uploads/2015/06/header-cocktail.jpg",
"http://thenakedconvos.com/wp-content/uploads/2013/06/cocktails3.jpg",
"http://howtofundraise.com.au/files/2012/12/Cocktails-C21_2217704b1.jpg",
"http://media2.s-nbcnews.com/j/newscms/2016_31/1148618/passion-fruit-cocktail-tease-today-160804_f60428d8efb5ef2177fea6986c2f4315.today-inline-large.jpg"
]


# Cocktail.destroy_all

recipes_serialized = File.read('db/recipes.json')
recipes = JSON.parse(recipes_serialized)

recipes.each do |recipe|
  cocktail_photos = photos.sample
  Cocktail.create(name: "#{recipe.values.first}", foreign_image: cocktail_photos)
end


