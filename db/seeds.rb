puts "Start seeding 🍑"

puts "Cleaning the database 🧹"
Restaurant.destroy_all

5.times do
  puts "Creating new restaurant 🏠"
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[belgian japanese italian french chinese].sample)
end

puts "Finish seeding 🍑"
