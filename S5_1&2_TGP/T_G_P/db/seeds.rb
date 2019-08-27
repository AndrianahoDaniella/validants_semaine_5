# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker' # On appelle la gem 'faker' afin de pouvoir créer du contenu aléatoire


City.destroy_all  # On remet sa base de données à 0

 10.times do     # On crée 10 nouvelles instances de City
	City.create(
		name: Faker::Address.city,
		zip_code: Faker::Address.zip_code)
 end 

User.destroy_all  # On remet sa base de données à 0

 10.times do 	  # On crée 10 nouvelles instances de User
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::Quote.most_interesting_man_in_the_world,
		email: Faker::Internet.email,
		age: Faker::Number.between(from: 15, to: 50),
		city: City.all.sample)
 end


Gossip.destroy_all  # On remet sa base de données à 0

 20.times do 		# On crée 20 nouvelles instances de Gossip
 	Gossip.create(
 		title: Faker::Quote.robin,
 		content: Faker::ChuckNorris.fact,
 		user: User.all.sample)
 end

#Tag.destroy_all  # On remet sa base de données à 0

 #10.times do   	 # On crée 10 nouvelles instances de Tag
 #	Tag.create(
 #		title: Faker::Book.genre)
 #end

