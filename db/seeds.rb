# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database..."
Guitar.destroy_all
User.destroy_all
puts "Database cleared!"

puts "Creating users, guitars..."

stratocaster = Guitar.new(
  brand: "Fender",
  model: "Stratocaster",
  color: "Red",
  handed: "Right-Handed",
  price: "10",
  user: User.create!(
    first_name: "Eric",
    last_name: "Clapton",
    email: "eric@jabronimail.com",
    password: "password",
  )
)
file = URI.open("https://res.cloudinary.com/shawnsutherlandtech/image/upload/v1661364968/guitars/Fender-Stratocaster_jbb5yo.jpg")
stratocaster.photos.attach(io: file, filename: "Fender-Stratocaster.jpg", content_type: "image/jpg")
stratocaster.save!

les_paul = Guitar.new(
  brand: "Gibson",
  model: "Les Paul",
  color: "Black",
  handed: "Right-Handed",
  price: "12",
  user: User.create!(
    first_name: "Dave",
    last_name: "Grohl",
    email: "foo@fightermail.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/shawnsutherlandtech/image/upload/v1661364968/guitars/Gibson-Les-Paul_wzxma7.png")
les_paul.photos.attach(io: file, filename: "Gibson-Les-Paul.jpg", content_type: "image/jpg")
les_paul.save!

victory = Guitar.new(
  brand: "Harley Benton",
  model: "Victory",
  color: "Black",
  handed: "Right-Handed",
  price: "15",
  user: User.create!(
    first_name: "Eddie",
    last_name: "Van Halen",
    email: "running@devilmail.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/shawnsutherlandtech/image/upload/v1661364968/guitars/Harley-Benton-Victory_f79nez.jpg")
victory.photos.attach(io: file, filename: "Harley-Benton-Victory.jpg", content_type: "image/jpg")
victory.save!

mustang = Guitar.new(
  brand: "Fender",
  model: "Mustang",
  color: "Sea Foam",
  handed: "Right-Handed",
  price: "14",
  user: User.create!(
    first_name: "Liz",
    last_name: "Phair",
    email: "exile@guyville.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/shawnsutherlandtech/image/upload/v1661364968/guitars/Fender-Mustang_k4jiy1.jpg")
mustang.photos.attach(io: file, filename: "Fender-Mustang.jpg", content_type: "image/jpg")
mustang.save!

jaguar = Guitar.new(
  brand: "Fender",
  model: "Jaguar",
  color: "Sunburst",
  handed: "Right-Handed",
  price: "18",
  user: User.create!(
    first_name: "John",
    last_name: "Frusciante",
    email: "rhcp@bssm.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/shawnsutherlandtech/image/upload/v1661364968/guitars/Fender-Jaguar_z6qomm.jpg")
victory.photos.attach(io: file, filename: "Fender-Jaguar.jpg", content_type: "image/jpg")
victory.save!

jagstang = Guitar.new(
  brand: "Fender",
  model: "Jagstang",
  color: "Sonic Blue",
  handed: "Left-Handed",
  price: "25",
  user: User.create!(
    first_name: "Kurt",
    last_name: "Cobain",
    email: "inbloom@lithium.com",
    password: "password"
  )
)
file = URI.open("https://res.cloudinary.com/shawnsutherlandtech/image/upload/v1661364968/guitars/Fender-Jagstang_bxhyxd.jpg")
jagstang.photos.attach(io: file, filename: "Fender-Jagstang.jpg", content_type: "image/jpg")
jagstang.save!

puts "Done!"
