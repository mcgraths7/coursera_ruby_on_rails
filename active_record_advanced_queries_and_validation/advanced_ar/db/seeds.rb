# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all

Person.create!([
  { first_name: "Steven", last_name: "McGrath", age: 28 },
  { first_name: "Juan", last_name: "Pol", age: 28 },
  { first_name: "Amira", last_name: "Dog", age: 2 },
  { first_name: "Alexander", last_name: "Hamilton", age: 350 },
  { first_name: "Sora", last_name: "???", age: 16 },
  { first_name: "George", last_name: "Michael", age: 54 }] )
