# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

johnlegend = Artist.create({ name: 'John Legend'})
lilwayne = Artist.create({ name: "Lil' Wayne"})
k3 = Artist.create({ name: 'K3'})

Song.create({ title: 'All of me', artist: johnlegend })
Song.create({ title: 'Tonight', artist: johnlegend})
Song.create({ title: 'Ordinary People', artist: johnlegend})
Song.create({ title: 'A Milli', artist: lilwayne})
Song.create({ title: 'How to love', artist: lilwayne})
Song.create({ title: 'Als het binnen regent', artist: k3})
