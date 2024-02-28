require 'faker'

puts "Destroy all"
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
    description: Faker::Quote.most_interesting_man_in_the_world,
    come_from: Faker::Address.city,
    year: rand(1990..2024),
    price: rand(5.00..30.00).ceil(2),
    user: User.all.sample
  )
  wine.save!
end

puts "Finish"
