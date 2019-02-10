# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoItem.destroy_all
TodoList.destroy_all

User.create([
  { username: "Fiorina", password_digest: "password1" },
  { username: "Trump", password_digest: "password2" },
  { username: "Carson", password_digest: "password3" },
  { username: "Clinton", password_digest: "password4" }])

Profile.create([
  { gender: "female", first_name: "Carly", last_name: "Fiorina", birth_year: 1954, user: User.find_by(username: "Fiorina") },
  { gender: "male", first_name: "Donald", last_name: "Trump", birth_year: 1946, user: User.find_by(username: "Trump") },
  { gender: "male", first_name: "Ben", last_name: "Carson", birth_year:  1951, user: User.find_by(username: "Carson") },
  { gender: "female", first_name: "Hillary", last_name: "Clinton", birth_year: 1947, user: User.find_by(username: "Clinton") }])

TodoList.create([
  {list_name: "fiorinas list", list_due_date: Date.today + 1.year, user: User.find_by(username: "Fiorina") },
  {list_name: "trumps list", list_due_date: Date.today + 1.year, user: User.find_by(username: "Trump") },
  {list_name: "carsons list", list_due_date: Date.today + 1.year, user: User.find_by(username: "Carson") },
  {list_name: "clintons list", list_due_date: Date.today + 1.year, user: User.find_by(username: "Clinton") }])

TodoList.all.each do |list|
  5.times do
    TodoItem.create({title: "todo item", description: "description of the item", due_date: Date.today + 1.year, todo_list_id: list.id})
  end
end
