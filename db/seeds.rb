# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker


10.times do
  User.create!(
    email: Internet.email,
    password: 'password',
    confirmed_at: Time.now
  )
end
users = User.all #  Standard by default

100.times do
  wiki = Wiki.create!(
    user: users.sample,
    title: Company.bs,
    body: Lorem.paragraphs.join(" "),
    private: false
  )
end

wikis = Wiki.all

admin = User.create!(
  email: 'admin@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'admin'
)

premium = User.create!(
  email: 'premium@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'premium'
)

standard = User.create!(
  email: 'standard@example.com',
  password: 'password',
  confirmed_at: Time.now,
  role: 'standard'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} posts created"
