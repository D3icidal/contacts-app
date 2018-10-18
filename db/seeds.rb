# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(         

# 90.times do
#   bad_contact = Contact.last
#   bad_contact.destroy
# end
Contact.destroy_all


num_to_make = 100 - Contact.count

num_to_make.times do
  contact5 = Contact.new(
    first_name: Faker::Name.first_name,
    middle_name: Faker::Name.middle_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    bio: Faker::FamousLastWords.last_words)
  contact5.save

  # Contact.all
end
puts "Number of contacts: #{Contact.count}"
# contact5 = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# contact5.save