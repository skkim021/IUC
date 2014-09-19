# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

School.create([
	{ name: 'Harvard', picture: 'http://harvardpolitics.com/blog/wp-content/uploads/2014/04/Seo-Endpaper-Picture-4-23.jpg' },
	{ name: 'UCLA', picture: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJVgWzBuYgt6yimgyd0hKEm8hsDNLeOfmg3DE5Z_yK90VIE9ou' },
	{ name: 'Brown', picture: 'http://hcigrad.com/images/schools/brown.jpg'},
	{ name: 'Stanford', picture: 'http://stanford.edu/about/images/intro_about.jpg'}
])