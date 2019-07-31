# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'Indian',
    phone_number: '9863546374'
  },
  {
    name:         'Sika',
    address:      'Canggu',
    category:  'Indonesian',
    phone_number: '6374536473'
  },
  {
    name:         'Fabricca',
    address:      'Canggu',
    category:  'Italian',
    phone_number: '7534263548'
  },
  {
    name:         'Bumi',
    address:      'Canggu',
    category:  'Indonesian',
    phone_number: '9182635463'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
