# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.create(name: 'Eagles', genre: 'Rock')
Album.create(artist_id: 1, title: 'Hotel California', year: 1978, condition: 5, rating:3)
Album.create(artist_id: 1, title: 'Long Run', year: 1982, condition: 5, rating:3)
Album.create(artist_id: 1, title: 'Great Hits', year: 1995, condition: 5, rating:3)

Artist.create(name: 'Genesis', genre: 'Rock')
Album.create(artist_id: 2, title: 'Greatest Hits', year: 1987, condition: 5, rating:3)

Artist.create(name: 'Mozart', genre: 'Classic')
Album.create(artist_id: 3, title: 'Hooked on Classic', year: 2001, condition: 5, rating:3)

Artist.create(name: 'Alabama', genre: 'Country')
Album.create(artist_id: 4, title: 'Greatest Hits', year: 2001, condition: 5, rating:3)
Album.create(artist_id: 4, title: 'southern country songs', year: 1998, condition: 3, rating:2)
