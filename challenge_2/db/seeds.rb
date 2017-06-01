# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times { Person.create!(name: "John Smith", company: "Bloco", email: "john@bloco.io", phone: "934567890", photo: "https://pbs.twimg.com/profile_images/562466745340817408/_nIu8KHX.jpeg") }
