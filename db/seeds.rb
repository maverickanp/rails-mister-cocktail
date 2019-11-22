# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
# Check for the environment
if Rails.env.development?
  Cocktail.destroy_all
end

puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name:         'Blood Mary'
  },
  {
    name:         'Lagoa Azul'
  },
  {
    name:         'Capeta'
  },
  {
    name:         'Diabo Verde'
  },
  {
    name:         'Caipirinha'
  },
  {
    name:         'Caipiroska'
  },
  {
    name:         'Sex on the Beach'
  },
  {
    name:         'Pina Colada'
  }
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'