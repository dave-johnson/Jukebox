# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def new_rating 
    rand(5) 
end
def new_condition
    rand(10)
end
def new_title
    words = %w(Greatest Hits Popular Songs Summer Winter Showers Classic)
    w = rand(7)
    title = []
    w.times do
        title << words[rand(words.size-1)]
    end
    title.join(" ")
end
def new_year
    1980 + rand(38)
end

def new_albums(id, max = 6) 
    n = rand(max) + 1
    n.times do
        title = new_title
        Album.create(artist_id: id, title: title, year: new_year, condition: new_condition, rating:new_rating)
    end
end

Artist.create(name: 'Eagles', genre: 'Rock')
Album.create(artist_id: 1, title: 'Hotel California', year: 1978, condition: new_condition, rating: new_rating)
Album.create(artist_id: 1, title: 'Long Run', year: 1982, condition: new_condition, rating:new_rating)
Album.create(artist_id: 1, title: 'Great Hits', year: 1995, condition: new_condition, rating:new_rating)

Artist.create(name: 'Genesis', genre: 'Rock')
Album.create(artist_id: 2, title: 'Greatest Hits', year: 1987, condition: new_condition, rating:new_rating)
new_albums(2, 15)

Artist.create(name: 'Mozart', genre: 'Classic')
Album.create(artist_id: 3, title: 'Hooked on Classic', year: 2001, condition: new_condition, rating:new_rating)
Album.create(artist_id: 3, title: 'Classic Song 1', year: 2001, condition: new_condition, rating:new_rating)
Album.create(artist_id: 3, title: 'Classic Song 2', year: 2003, condition: new_condition, rating:new_rating)
new_albums(2, 3)

Artist.create(name: 'Alabama', genre: 'Country')
Album.create(artist_id: 4, title: 'Greatest Hits', year: 2001, condition: new_condition, rating:new_rating)
new_albums(4)

Artist.create(name: 'Pink', genre: 'Rock')
Album.create(artist_id: 5, title: 'Fun house', year: 2018, condition: new_condition, rating:new_rating)
