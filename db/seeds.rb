# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
City.delete_all
Spot.delete_all

# USERS
demo = User.create(
  username: "guest",
  first_name: "Guest",
  last_name: "Johnson",
  password: "password"
)

dave = User.create(
  username: "dave",
  first_name: "Dave",
  last_name: "Chan",
  password: "password"
)

nedjohnson = User.create(
  username: "nedjohnson",
  first_name: "Ned",
  last_name: "Johnson",
  password: "password"
)

ryanmapa = User.create(
  username: "ryanmapa",
  first_name: "Ryan",
  last_name: "Mapa",
  password: "password"
)

cindy = User.create(
  username: "cindy",
  first_name: "Cindy",
  last_name: "Ke",
  password: "password"
)

alec = User.create(
  username: "alec",
  first_name: "Alec",
  last_name: "Ning",
  password: "password"
)

# CITIES
# 1
sf = City.create({      
  name: "San Francisco"
})

# 2
la = City.create({
  name: "la"
})

# 3
hk = City.create({
  name: "Hong Kong"
})

# 4
paris = City.create({
  name: "Paris"
})

# 5
tokyo = City.create({
  name: "San Francisco"
})
 


