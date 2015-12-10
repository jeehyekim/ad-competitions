# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
d1 = DateTime.new(2015, 12, 31)

User.create({name:"Olivia", email: 'one@test.com', password_digest: 'test', admin:true})

Competition.create({title: "Art Directors Club (ADC) 95th Annual Awards", description: "Art Directors Club (ADC) is currently calling for entries in its 95th Annual Awards, inviting all Advertising and Design Professionals and Students around the world to participate with new works.\n The ADC Annual Awards is the oldest continuously running industry award show in the world, which celebrates the very best in advertising, digital media, graphic and publication design, packaging, motion, photography and illustration, all with a focus on artistry and craftsmanship. \n Outstanding entrants are selected by highly respected juries, and honored with coveted Gold, Silver and Bronze Cubes, presented at the Annual Awards Gala in New York in June, 2016. Beyond these Cubes, however, ADC Annual Awards winners join a rich legacy of past honorees that include some of the most influential artists of the past century.\n This year the Awards include thirty-three (33) competition categories of which the “Innovation” category is completely new. \n Please note that some of the competition categories have different deadlines for entry than the one we list, so do check the official website for more specifics.\n The ADC Awards have been hosted annually since 1921, as an uninterrupted celebration of the artistry and craftsmanship that is synonymous with beautiful advertising and design.", website: "http://adcglobal.org/awards/", early_bird: d1, image_url: "http://contestwatchers.com/wp-content/uploads/2015/11/Art-Directors-Club-ADC-95th-Annual-Awards-Competition.jpg"})