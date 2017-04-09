# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  User.create \
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: '123123',
    password_confirmation: '123123'
end

#20.times do
#	Chat.create \
#		name: Faker::Name.title,
#		admin_id: Faker::Number.between(1, 100),
#		user_ids: [Faker::Number.between(1, 100),Faker::Number.between(1, 100),Faker::Number.between(1, 100),Faker::Number.between(1, 100)]
#end

#1000.times do
#	Message.create \
#		body: Faker::Lorem.sentence,
#		user_id: Faker::Number.between(1, 100),
#		chat_id: Faker::Number.between(1, 100)
#end