require 'faker'
Faker::Config.locale = 'fr'

puts "Destroy all"
Rating.destroy_all
Usergift.destroy_all
Gift.destroy_all
Wine.destroy_all
User.destroy_all

puts "Create users"

3.times do
  user = User.new(
    first_name: Faker::Fantasy::Tolkien.character,
    last_name: "Last name ",
    username: "Username ",
    email: "#{Faker::Fantasy::Tolkien.race}@lordofthering.com",
    password: "password"
    )
    file = URI.open(Faker::LoremFlickr.image)
    user.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
  user.save!
end

eva = User.create!(first_name: "Eva", last_name: "Touboulic", username: "Erya", email: "evatblc@gmail.com", password: "password")
file = File.open(Rails.root.join("app/assets/images/avatar.jpg"))
eva.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

puts "Create wines"

20.times do
  wine = Wine.new(
    name: Faker::Coffee.blend_name,
    vignoble: Faker::Coffee.origin,
    color: Wine::COLOR.sample,
    description: "Robe rouge vermillon moyennement intense. Nez fin et élégant s'ouvrant sur la framboise fraîche, et évoluant sur des notes de cassis et thym. Bouche fraîche et équilibrée, marquée par des tanins jeunes présents en fin de bouche. Robe or pâle brillante aux reflets jaune.",
    alcool_degree: rand(10.2..15.00).ceil(2),
    year: rand(1990..2024),
    price: rand(5.00..30.00).ceil(2),
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
