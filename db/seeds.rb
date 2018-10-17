# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


90.times do
  bad_contact = Contact.last
  bad_contact.destroy
end

num_to_make = 100 - Contact.count

num_to_make.times do
  contact5 = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
  contact5.save
end
puts "Number of contacts: #{Contact.count}"
# contact5 = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# contact5.save