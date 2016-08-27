# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.delete_all
Artist.delete_all

johnlegend = Artist.create( name: 'John Legend', remote_image_url: "https://lh5.googleusercontent.com/-sWpAFzY0h64/AAAAAAAAAAI/AAAAAAAAB9w/7h2selUbLbk/s0-c-k-no-ns/photo.jpg")
lilwayne = Artist.create( name: "Lil' Wayne", remote_image_url: "http://whoisbiography.com/wp-content/uploads/2015/06/url.jpg")
k3 = Artist.create( name: 'K3', remote_image_url: "https://studio100.com/webshop/be/2469/k3-cd-10000-luchtballonnen.jpg")

Song.create({ title: 'All of me', artist: johnlegend })
Song.create({ title: 'Tonight', artist: johnlegend})
Song.create({ title: 'Ordinary People', artist: johnlegend})
Song.create({ title: 'A Milli', artist: lilwayne})
Song.create({ title: 'How to love', artist: lilwayne})
Song.create({ title: 'Als het binnen regent', artist: k3})
