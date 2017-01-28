# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.create!( name: "Grève", proba: 90, impact: 80, fiab: 75)
Event.create!( name: "Trafic dense", proba: 60, impact: 50, fiab: 45)
Event.create!( name: "Panne RER", proba: 99, impact: 70, fiab: 90)
Event.create!( name: "Match PSG", proba: 90, impact: 80, fiab: 75)