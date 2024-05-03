require 'faker'
Faker::Config.locale = 'fr'

puts "Destroy all"
Rating.destroy_all
Wine.destroy_all
User.destroy_all

puts "Create users"

3.times do
  user = User.new(
    first_name: Faker::Fantasy::Tolkien.character,
    last_name: " ",
    email: "#{Faker::Fantasy::Tolkien.race}@lordofthering.com",
    password: "password"
    )
  user.save!
end

puts "Create wines"

20.times do
  wine = Wine.new(
    name: Faker::Coffee.blend_name,
    vignoble: Faker::Coffee.origin,
    color: Wine::COLOR.sample,
    alcool_degree: rand(10.2..15.00).ceil(2),
    year: rand(1990..2024),
    price: rand(5.00..30.00).ceil(2),
    user: User.all.sample
  )
  wine.save!
end

puts "Create ratings"

20.times do
  Rating.create(
    description: Faker::TvShows::MichaelScott.quote,
    votes: rand(0..5),
    user: User.all.sample,
    wine: Wine.all.sample
  )
end

puts "Finish"
