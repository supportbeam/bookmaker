# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create!(
	:name => "Luigi's Spaghetti Emporium",
	:description => "An American-Italian fusion extravaganza!",
	:address => "72 Brimcair avenue",
	:phone_number => "416 232-9267",
	:category => "Italian",
	:capacity => 100
	)



