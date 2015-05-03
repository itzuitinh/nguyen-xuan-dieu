# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cats = ["Sandals","Sneakers & Athletic Shoes", "Heels", "Boots", "Oxfords"]
 cats.each do |cat|
 Category.create(name: cat, active:true) unless Category.exists?(name: cat)
 end
 compa = ["Adidas","Nike", "Puma", "Sccoer", "New Balance"]
 compa.each do |compa|
 Company.create(name: compa, active:true) unless Company.exists?(name: compa)
 end


