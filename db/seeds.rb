# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Section.create(title: "greetings", icon: "i am a nice button")
Section.create(title: "goodbye", icon: "waving hand")
User.create(firstName: "Bob", lastName: "Vance", email: "bob@email.com", password:"123", speed:1, pitch:1, createdAt: DateTime.now, updatedAt: DateTime.now)
