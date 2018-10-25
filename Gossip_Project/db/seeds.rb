require 'faker'
def gen_user
	10.times do
	User.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email,age:Faker::Number.between(7, 77))
	end
end
def gen_city
	10.times do
	City.create!(name: Faker::Nation.capital_city, postal_code: Faker::Address.postcode)
end
end
def link_user_to_cities
	10.times do |i|
	i += 1
	user = User.find(i)
	user.update(city_id: Faker::Number.between(1, 10))
	end
end
def gen_gossip
	20.times do
	Gossip.create!(content: Faker::Lorem.paragraph, title: Faker::Lorem.sentence)
	end
end
def link_gossip_to_user
	20.times do |i|
	i += 1
	gossip = Gossip.find(i)
	gossip.update(user_id: Faker::Number.between(1, 10))
end
end
def gen_tag
	10.times do
	Tag.create!(title: Faker::Color.color_name)
end
end
def link_tag_to_gossips
	10.times do |i|
	i += 1
	tag = Tag.find(i)
	tag.update(gossips_id: Faker::Number.between(1, 20))
end
end
def gen_pm
	PrivateMessage.create!(content: Faker::Lorem.paragraph)
end
def link_pm_to_user
	user = User.find(8)
	user.update(private_message_id: "1")
	pm = PrivateMessage.find(1)
	pm.update(user_id: "8")
end

def perform
	gen_user
	gen_city
	link_user_to_cities
	gen_gossip
	link_gossip_to_user
	gen_tag
	link_tag_to_gossips
	gen_pm
	link_pm_to_user
end

perform
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
