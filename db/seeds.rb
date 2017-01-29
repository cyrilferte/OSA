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
Event.create!( name: "Match PSG", description: "", proba: 90, impact: 80, fiab: 75)
Event.create!( name: "Verglas", description: "", proba: 70, impact: 40, fiab: 65)
Event.create!( name: "Grève chauffeurs routier", description: "Fournisseur et Opérateur bloqués", proba: 85, impact: 90, fiab: 75)
Event.create!( name: "Alerte attentats", description: "RER et trains bloqués", proba: 30, impact: 80, fiab: 50)
Event.create!( name: "Attentas", description: "Tous les réseaux de transports paralysés", proba: 20, impact: 95, fiab: 30)
Event.create!( name: "Victoire France Handball", description: "Finale handball", proba: 80, impact: 50, fiab: 60)
Event.create!( name: "Défaite France Handball", description: "Moral au plus bas", proba: 90, impact: 80, fiab: 75)
Event.create!( name: "Retard Fournisseur", description: "Manque de pièces", proba: 70, impact: 75, fiab: 80)
Event.create!( name: "Epidémie de gastro", description: "", proba: 80, impact: 65, fiab: 55)
Event.create!( name: "Moniteur malade", description: "", proba: 90, impact: 60, fiab: 75)