CATEGORIES = %w[chinese italian japanese french belgian]

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: CATEGORIES.sample
  )
end

puts 'Done seeding databse!'
