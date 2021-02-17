# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all

User.create(username: "Bilbo", password: "123")
User.create(username: "Frodo", password: "123")

Game.create(total_points: 1000, difficulty: "Hard", category: "Trees", user_id: 1)
Game.create(total_points: 400, difficulty: "Medium", category: "Trucks", user_id: 1)
Game.create(total_points: 600, difficulty: "Easy", category: "Movies", user_id: 1)
Game.create(total_points: 840, difficulty: "Hard", category: "Trees", user_id: 2)
Game.create(total_points: 920, difficulty: "Medium", category: "Movies", user_id: 2)