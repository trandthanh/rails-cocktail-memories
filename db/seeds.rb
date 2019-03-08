require 'open-uri'

puts "Destroying ingredients"
Ingredient.destroy_all

puts "Destroying cocktails"
Cocktail.destroy_all

puts "Creating ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end
puts "Finished creating ingredients"

puts "Creating 6 cocktails"
bloodymary = Cocktail.new(
  name: 'Bloody Mary',
  season: 'Summer',
  moment: '6pm',
  person: 'Bae'
)
bloodymary.remote_photo_url = 'https://images.unsplash.com/photo-1448832328263-620a1a483228?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80'
bloodymary.save
margarita = Cocktail.new(
  name: 'Margarita',
  photo: 'http://www.tresagaves.com/userfiles/social/opengraph/63/fresh-margarita.jpg',
  season: 'Summer',
  moment: '9pm',
  person: 'Girl Friends'
)
margarita.remote_photo_url = 'http://www.tresagaves.com/userfiles/social/opengraph/63/fresh-margarita.jpg'
margarita.save
tequilasunrise = Cocktail.new(
  name: 'Tequila Sunrise',
  photo: 'https://craftybartending.com/wp-content/uploads/2018/04/Tequila-sunrise-cocktail.jpg',
  season: 'Summer',
  moment: '9pm',
  person: 'Girl Friends'
)
tequilasunrise.remote_photo_url = 'https://craftybartending.com/wp-content/uploads/2018/04/Tequila-sunrise-cocktail.jpg'
tequilasunrise.save
dillonstorm = Cocktail.new(
  name: 'Dillon Storm',
  photo: 'https://res.cloudinary.com/trandgthanh/image/upload/v1551373488/orc4loduyndeygxy8h72.jpg',
  season: 'Summer',
  moment: '7pm',
  person: 'Guy Friends'
)
dillonstorm.remote_photo_url = 'https://res.cloudinary.com/trandgthanh/image/upload/v1551373488/orc4loduyndeygxy8h72.jpg'
dillonstorm.save
puts "Finished creating cocktails"
