# USER SEEDS ----------------------------------------------------

users = User.create!(name: "Kayla Silvey", email: "kayla@email.com", password: "password")
users = User.create!(name: "Lisa Mao", email: "lisa@email.com", password: "password")
users = User.create!(name: "Peter Jang", email: "peter@email.com", password: "password")
users = User.create!(name: "Jay Wengrow", email: "jay@email.com", password: "password")

# ITEM SEEDS -----------------------------------------------------

items = Item.create!(name: "eggs", UOM: "dozen", user_id: 1)
items = Item.create!(name: "bananas", UOM: "each", user_id: 2)
items = Item.create!(name: "bread", UOM: "loaf", user_id: 3)
items = Item.create!(name: "frozen peas", UOM: "bag", user_id: 4)
items = Item.create!(name: "kimchi", UOM: "jar", user_id: 1)
items = Item.create!(name: "diet coke", UOM: "can", user_id: 2)
items = Item.create!(name: "frozen pizza", UOM: "each", user_id: 3)
items = Item.create!(name: "spinach", UOM: "bag", user_id: 4)
items = Item.create!(name: "gochujang", UOM: "jar", user_id: 1)
items = Item.create!(name: "coca cola", UOM: "bottle", user_id: 1)

# LOCATION SEEDS -------------------------------------------------

locations = Location.create!(name: "Pantry", user_id: 1)
locations = Location.create!(name: "Fridge", user_id: 1)
locations = Location.create!(name: "Freezer", user_id: 1)
locations = Location.create!(name: "Cupboard", user_id: 1)
locations = Location.create!(name: "Pantry", user_id: 2)
locations = Location.create!(name: "Fridge", user_id: 2)
locations = Location.create!(name: "Freezer", user_id: 2)
locations = Location.create!(name: "Cupboard", user_id: 2)
locations = Location.create!(name: "Pantry", user_id: 3)
locations = Location.create!(name: "Fridge", user_id: 3)
locations = Location.create!(name: "Freezer", user_id: 3)
locations = Location.create!(name: "Cupboard", user_id: 3)
locations = Location.create!(name: "Pantry", user_id: 4)
locations = Location.create!(name: "Fridge", user_id: 4)
locations = Location.create!(name: "Freezer", user_id: 4)
locations = Location.create!(name: "Cupboard", user_id: 4)

# LIST SEEDS -----------------------------------------------------

lists = List.create!(name: "Need from Whole Foods", user_id: 1)
lists = List.create!(name: "For Dinner", user_id: 2)
lists = List.create!(name: "Staple Items", user_id: 3)
lists = List.create!(name: "Don't Forget...", user_id: 4)

# EXPIRATION SEEDS ------------------------------------------------

expirations = Expiration.create!(date: "07/30/2019")
expirations = Expiration.create!(date: "01/10/2020")
expirations = Expiration.create!(date: "10/16/2019")
expirations = Expiration.create!(date: "09/27/2019")
expirations = Expiration.create!(date: "05/17/2020")
expirations = Expiration.create!(date: "12/20/2019")
expirations = Expiration.create!(date: "02/19/2020")

# LIST_ITEM SEEDS -----------------------------------------------------

list_items = ListItem.create!(list_id: 1, item_id: 2, user_id: 1, QTY: 4)
list_items = ListItem.create!(list_id: 1, item_id: 1, user_id: 1, QTY: 1)
list_items = ListItem.create!(list_id: 1, item_id: 3, user_id: 1, QTY: 1)
list_items = ListItem.create!(list_id: 1, item_id: 4, user_id: 1, QTY: 1)
list_items = ListItem.create!(list_id: 1, item_id: 5, user_id: 1, QTY: 1)
list_items = ListItem.create!(list_id: 1, item_id: 9, user_id: 1, QTY: 1)
list_items = ListItem.create!(list_id: 4, item_id: 7, user_id: 2, QTY: 3)
list_items = ListItem.create!(list_id: 4, item_id: 10, user_id: 2, QTY: 1)
list_items = ListItem.create!(list_id: 4, item_id: 6, user_id: 2, QTY: 6)

# LOCATION_ITEM SEEDS ------------------------------------------------

location_items = LocationItem.create!(location_id: 1, item_id: 2, user_id: 1, QTY: 4)
location_items = LocationItem.create!(location_id: 2, item_id: 1, user_id: 1, QTY: 1)
location_items = LocationItem.create!(location_id: 1, item_id: 3, user_id: 1, QTY: 1)
location_items = LocationItem.create!(location_id: 3, item_id: 4, user_id: 1, QTY: 1)
location_items = LocationItem.create!(location_id: 2, item_id: 5, user_id: 1, QTY: 1)
location_items = LocationItem.create!(location_id: 1, item_id: 5, user_id: 1, QTY: 1)
location_items = LocationItem.create!(location_id: 1, item_id: 9, user_id: 1, QTY: 1)
location_items = LocationItem.create!(location_id: 3, item_id: 7, user_id: 1, QTY: 3)
location_items = LocationItem.create!(location_id: 2, item_id: 10, user_id: 1, QTY: 1)
location_items = LocationItem.create!(location_id: 2, item_id: 6, user_id: 1, QTY: 6)
location_items = LocationItem.create!(location_id: 2, item_id: 11, user_id: 1, QTY: 6)
location_items = LocationItem.create!(location_id: 2, item_id: 12, user_id: 1, QTY: 1)
