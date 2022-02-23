# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Tenant.destroy_all
Apartment.destroy_all
Building.destroy_all

buildings = Building.create(
  [
    {
      name: "Madison Park",
      street: "100 Madison Street",
      city: "Washington DC, 20100"
    },
    {
      name: "Hampton Park",
      street: "200 Hampton Street",
      city: "Washington DC, 20200"
    },
    {
      name: "Morton Park",
      street: "300 Morton Street",
      city: "Washington DC, 20300"
    }
  ]
)

Apartment.create(
  [
    {
      unit: 201,
      rooms: 1,
      rent: 1500,
      building_id: 1
    },
    {
      unit: 202,
      rooms: 2,
      rent: 2000,
      building_id: 1
    },
    {
      unit: 301,
      rooms: 1,
      rent: 1500,
      building_id: 1
    },
    {
      unit: 302,
      rooms: 2,
      rent: 2000,
      building_id: 1
    },
    {
      unit: 401,
      rooms: 1,
      rent: 1500,
      building_id: 1
    },
    {
      unit: 402,
      rooms: 2,
      rent: 2000,
      building_id: 1
    },
    {
      unit: 201,
      rooms: 1,
      rent: 1500,
      building_id: 2
    },
    {
      unit: 202,
      rooms: 2,
      rent: 2000,
      building_id: 2
    },
    {
      unit: 301,
      rooms: 1,
      rent: 1500,
      building_id: 2
    },
    {
      unit: 302,
      rooms: 2,
      rent: 2000,
      building_id: 2
    },
    {
      unit: 401,
      rooms: 1,
      rent: 1500,
      building_id: 2
    },
    {
      unit: 402,
      rooms: 2,
      rent: 2000,
      building_id: 2
    },
    {
      unit: 201,
      rooms: 1,
      rent: 1500,
      building_id: 3
    },
    {
      unit: 202,
      rooms: 2,
      rent: 2000,
      building_id: 3
    },
    {
      unit: 301,
      rooms: 1,
      rent: 1500,
      building_id: 3
    },
    {
      unit: 302,
      rooms: 2,
      rent: 2000,
      building_id: 3
    },
    {
      unit: 401,
      rooms: 1,
      rent: 1500,
      building_id: 3
    },
    {
      unit: 402,
      rooms: 2,
      rent: 2000,
      building_id: 3
    }
  ]
)

Tenant.create(
  [
    {
      name: "jerry Seinfeld",
      email: "jerryseinfeld@email.com",
      apartment_id: 1
    },
    {
      name: "Morty Seinfeld",
      email: "mortyseinfeld@email.com",
      apartment_id: 2
    },
    {
      name: "Helen Seinfeld",
      email: "helenseinfeld@email.com",
      apartment_id: 2
    },
    {
      name: "George Costanza",
      email: "georgecostanza@email.com",
      apartment_id: 3
    },
    {
      name: "Frank Costanza",
      email: "frankcostanza@email.com",
      apartment_id: 4
    },
    {
      name: "Estelle Costanza",
      email: "estellecostanza@email.com",
      apartment_id: 4
    },
    {
      name: "Elaine Benes",
      email: "elainebenes@email.com",
      apartment_id: 5
    },
    {
      name: "Cosmo Kramer",
      email: "cosmokramer@email.com",
      apartment_id: 6
    },
    {
      name: "Newman",
      email: "newman@email.com",
      apartment_id: 6
    },
    {
      name: "Bart Simpson",
      email: "bartsimpson@email.com",
      apartment_id: 7
    },
    {
      name: "Homer Simpson",
      email: "homersimpson@email.com",
      apartment_id: 8
    },
    {
      name: "Marge Simpson",
      email: "margesimpson@email.com",
      apartment_id: 8
    },
    {
      name: "Lisa Simpson",
      email: "lisasimpson@email.com",
      apartment_id: 9
    },
    {
      name: "Patty Bouvier",
      email: "pattybouvier@email.com",
      apartment_id: 10
    },
    {
      name: "Selma Bouvier",
      email: "selmabouvier@email.com",
      apartment_id: 10
    },
    {
      name: "Moe Szyslak",
      email: "moeszyslak@email.com",
      apartment_id: 11
    },
    {
      name: "Mr. Burns",
      email: "mrburns@email.com",
      apartment_id: 12
    },
    {
      name: "Waylon Smithers",
      email: "waylonsmithers@email.com",
      apartment_id: 12
    },
    {
      name: "Michael Scott",
      email: "michaelscott@email.com",
      apartment_id: 13
    },
    {
      name: "Jim Halpert",
      email: "jimhalpert@email.com",
      apartment_id: 14
    },
    {
      name: "Pam Beesly",
      email: "pambeesly@email.com",
      apartment_id: 14
    },
    {
      name: "Angela Martin",
      email: "angelamartin@email.com",
      apartment_id: 15
    },
    {
      name: "Dwight Schrute",
      email: "dwightschrute@email.com",
      apartment_id: 16
    },
    {
      name: "Andy Bernard",
      email: "andybernard@email.com",
      apartment_id: 16
    },
    {
      name: "Meredith Palmer",
      email: "meredithpalmer@email.com",
      apartment_id: 17
    },
    {
      name: "Ryan Howard",
      email: "ryanhoward@email.com",
      apartment_id: 18
    },
    {
      name: "Kelly Kapoor",
      email: "kellykapoor@email.com",
      apartment_id: 18
    }
  ]
)
