# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'emptying database'
Request.delete_all
Listing.delete_all
Stop.delete_all
Item.delete_all
User.delete_all
puts

puts 'creating users'
tzvi = User.create(
  first_name: 'Tzvi',
  last_name: 'Hamerman',
  email: 'Tzvi@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "tzvi.png"))
)
vini = User.create(
  first_name: 'Vinicius',
  last_name: 'Ishizaki',
  email: 'Vinicius@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "vinicius.jpeg"))
)
eliz = User.create(
  first_name: 'Elizabeth',
  last_name: 'Creary',
  email: 'Elizabeth@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "elizabeth.jpg"))
)
songyi = User.create(
  first_name: 'Songyi',
  last_name: 'Han',
  email: 'Songyi@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "songyi.jpeg"))
)
alice = User.create(
  first_name: 'Alice',
  last_name: 'Fisher',
  email: 'alice@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "alice.png"))
)
evan = User.create(
  first_name: 'Evan',
  last_name: 'Davies',
  email: 'evan@lewagon.com',
  password: '123456',
  photo: File.open(Rails.root.join("app", "assets", "images", "evan.jpeg"))
)
puts 'done creating users'
puts

puts 'creating stops'
evan_copenhagen_stop = Stop.create(city:"copenhagen", start_date:Date.new(2018,12,03), end_date:Date.new(2018,12,28), user:evan, photo: File.open(Rails.root.join("app", "assets", "images", "copenhagen.jpeg")))
vini_copenhagen_stop = Stop.create(city:"copenhagen", start_date:Date.new(2018,12,01), end_date:Date.new(2018,12,31), user:vini, photo: File.open(Rails.root.join("app", "assets", "images", "copenhagen.jpeg")))
alice_copenhagen_stop = Stop.create(city:"copenhagen", start_date:Date.new(2018,12,05), end_date:Date.new(2018,12,14), user:alice, photo: File.open(Rails.root.join("app", "assets", "images", "copenhagen.jpeg")))
eliz_paris_stop = Stop.create(city:"paris", start_date:Date.new(2018,12,10), end_date:Date.new(2018,12,13), user:eliz, photo: File.open(Rails.root.join("app", "assets", "images", "paris.jpg")))
evan_paris_stop = Stop.create(city:"paris", start_date:Date.new(2018,12,07), end_date:Date.new(2018,12,10), user:evan, photo: File.open(Rails.root.join("app", "assets", "images", "paris.jpg")))
vini_paris_stop = Stop.create(city:"paris", start_date:Date.new(2018,12,07), end_date:Date.new(2018,12,31), user:vini, photo: File.open(Rails.root.join("app", "assets", "images", "paris.jpg")))
evan_amsterdam_stop = Stop.create(city:"amsterdam", start_date:Date.new(2018,12,15), end_date:Date.new(2018,12,20), user:evan, photo: File.open(Rails.root.join("app", "assets", "images", "amsterdam.jpeg")))
evan_barcelona_stop = Stop.create(city:"barcelona", start_date:Date.new(2018,12,21), end_date:Date.new(2018,12,30), user:evan, photo: File.open(Rails.root.join("app", "assets", "images", "barcelona.jpeg")))
puts 'done creating stops'
puts

puts 'creating items'
charcoal_item = Item.create(user:alice, name: 'Charcoal for BBQ', description: 'still more than 2/3 left ! for someone who love BBQ', photo: File.open(Rails.root.join("app", "assets", "images", "charcoal.jpg")))
travel_mug_item = Item.create(user:alice, name: 'Travel Mug', description: 'stainless steel travel mug', photo: File.open(Rails.root.join("app", "assets", "images", "travel_mug.jpeg")))
hiking_boots_item = Item.create(user:alice, name: 'Hiking Boots', description: 'waterproof, size 10, for men', photo: File.open(Rails.root.join("app", "assets", "images", "hiking_boots.jpg")))
insect_repellent_item = Item.create(user:alice, name: 'Insect Repellent', description: 'Brand is "OFF", barely used, mostly full', photo: File.open(Rails.root.join("app", "assets", "images", "insect_repellent.jpeg")))
book_hitchikers_guide_item = Item.create(user:eliz, name: "Book: The Hitchhiker's Guide to the Galaxy", description: "Good condition, Softcover", photo: File.open(Rails.root.join("app", "assets", "images", "hitchhikers_guide_book.jpeg")))
unisex_rain_jacket_item = Item.create(user:eliz, name: 'Unisex Rain Jacket', description: 'Color: Blue, waterproof, for adults', photo: File.open(Rails.root.join("app", "assets", "images", "rain_jacket.jpeg")))
paris_museum_pass_item = Item.create(user:eliz, name: 'Paris Museum Pass', description: "You can visit any Museum in Paris for free within a 6 day span. I'm leaving Paris earlier than I thought, I hope someone will benefit from this free pass! :)", photo: File.open(Rails.root.join("app", "assets", "images", "paris_museum_pass.jpg")))
travel_pillow_item = Item.create(user:evan, name: 'Travel Pillow', description: 'Very comfy Travel Pillow for adult or child', photo: File.open(Rails.root.join("app", "assets", "images", "travel_pillow.jpeg")))
european_plug_item = Item.create(user:evan, name: 'European USB Plug', description: "Good travel usb plug", photo: File.open(Rails.root.join("app", "assets", "images", "european_plug.jpg")))
book_harry_potter_philosopher_item = Item.create(user:evan, name: "Harry Potter and the Philosopher's Stone
", description: 'Hardcover, good condition', photo: File.open(Rails.root.join("app", "assets", "images", "book_harry_potter_philosopher.jpg")))
surf_board_item = Item.create(user:evan, name: 'Surfing board for kids', description: 'almost new!, Aloha brand ', photo: File.open(Rails.root.join("app", "assets", "images", "surf_board.jpg")))
headphone_item = Item.create(user:evan, name: 'Noise cancelling headphones', description: "Great condition, Sennheiser 280. Just got new headphones, don't need them anymore", photo: File.open(Rails.root.join("app", "assets", "images", "sennheiser_280.jpeg")))
spain_guidebook_item = Item.create(user:evan, name: 'Spain guide book', description: "Lonely Planet guide book, includes spanish phrasebook", photo: File.open(Rails.root.join("app", "assets", "images", "spain_guide_book.png")))
travel_guitar_item = Item.create(user:evan, name: 'Travel guitar', description: "Taylor travel guitar, really good sound for it's size", photo: File.open(Rails.root.join("app", "assets", "images", "travel_guitar.jpg")))
toiletry_bag_item = Item.create(user:evan, name: 'Toiletry bag and accessories', description: "Leather Toiletry bag, comes with shampoo, conditioner, body soap, and lotion.", photo: File.open(Rails.root.join("app", "assets", "images", "toiletry_bag_and_accessories.jpeg")))
towel_item = Item.create(user:evan, name: 'Travel Towel', description: "Blue towel, can fold up nicely, dries quickly, perfect for backpackers", photo: File.open(Rails.root.join("app", "assets", "images", "beach_towel.jpg")))
flashlight_item = Item.create(user:evan, name: 'Small travel flashlight', description: "Usefull for campers and night trekkers", photo: File.open(Rails.root.join("app", "assets", "images", "flashlight_led_portable.jpeg")))
sim_card_item = Item.create(user:evan, name: 'Sim card for SwissCom', description: 'Works until March/2019. 1GB Internet still remaining', photo: File.open(Rails.root.join("app", "assets", "images", "swiss_simcard.jpg")))
mens_boots_item = Item.create(user:evan, name: 'Mens boots', description: 'size 13, Black, waterproof', photo: File.open(Rails.root.join("app", "assets", "images", "mens_boots_size_13_black.jpeg")))
umbrella_item = Item.create(user:vini, name: 'Umbrella', description: "Really comes in handy in the Paris rain", photo: File.open(Rails.root.join("app", "assets", "images", "umbrella.jpeg")))
book_into_the_wild_item = Item.create(user:vini, name: 'Into the wild: Book', description: 'Really interesting book about a real life person who gave up everything and explored the wilderness', photo: File.open(Rails.root.join("app", "assets", "images", "book_into_the_wild.jpg")))
waterproof_pouch_item = Item.create(user:evan, name: 'waterproof pouch', description: "Very good quality waterproof bag. I made a lot of memories with this :)", photo: File.open(Rails.root.join("app", "assets", "images", "waterproof_travel_pouch.jpg")))
puts 'done creating items'
puts

puts 'creating listing'
stops = Stop.all
items = Item.all
Listing.create(item: charcoal_item, stop: alice_copenhagen_stop)
Listing.create(item: travel_mug_item, stop: alice_copenhagen_stop)
Listing.create(item: hiking_boots_item, stop: alice_copenhagen_stop)
Listing.create(item: insect_repellent_item, stop: alice_copenhagen_stop)
Listing.create(item: towel_item, stop: evan_copenhagen_stop)
Listing.create(item: flashlight_item, stop: evan_copenhagen_stop)
Listing.create(item: mens_boots_item, stop: evan_paris_stop)
Listing.create(item: toiletry_bag_item, stop: evan_paris_stop)
Listing.create(item: umbrella_item, stop: vini_paris_stop)
Listing.create(item: book_into_the_wild_item, stop: vini_paris_stop)
Listing.create(item: book_hitchikers_guide_item, stop: eliz_paris_stop)
Listing.create(item: unisex_rain_jacket_item, stop: eliz_paris_stop)
Listing.create(item: paris_museum_pass_item, stop: eliz_paris_stop)
Listing.create(item: travel_pillow_item, stop: evan_copenhagen_stop)
Listing.create(item: european_plug_item, stop: evan_copenhagen_stop)
Listing.create(item: book_harry_potter_philosopher_item, stop: evan_amsterdam_stop)
Listing.create(item: surf_board_item, stop: evan_barcelona_stop)
Listing.create(item: headphone_item, stop: evan_barcelona_stop)
Listing.create(item: spain_guidebook_item, stop: evan_barcelona_stop)
Listing.create(item: travel_guitar_item, stop: evan_barcelona_stop)
Listing.create(item: waterproof_pouch_item, stop: evan_barcelona_stop)


puts 'done creating listings'
puts

puts 'Seeds complete!'
