# Welcome to the Jukebox

This is going to be a really cool application when its done.  Until then, lets just say its a playground for me to brush up on Rails.

I'm going to start out with it just as a collection of music.  Later I want it to be a virtual jukebox to play the music.  It would be really cool to have this play from multiple devices (record jukebox, cd jukebox and of course digital).   After I get the collection piece done, I'll just start with playing digital.

## Installation

You need to install Rails.   I using Ruby 2.3.1, Rails 5.1.6 and sqlite 3 for this application.   

You can follow the installation instruction from http://guides.rubyonrails.org/getting_started.html 

## Running the Jukebox app

1. Migrate the database
2. Start the server
3. Start browsing the app.   
```
rails db:migrate
rails server
open http://localhost:3000
```

Until I get the screens build for updating Artist and Album, I'll be adding a bunch of the info into the db.seeds.rb file.   Simple way to get the data rebuild is scorch the db and just reset.   
```
rails db:reset
```

## TODO list

This is in no particular order.   Just keeping notes on things to do.  I'll hack them off the list as I go along.

* Export list to CSV
* Display album year range
* Fix All Album list.  I need to get a list of all albums
* Add screens to add/edit albums
* Add Track information
* Add Playlists
* A genre list
* Add album artwork
* Make the screens look usable.  UX friends will laugh, or cry at this version
* Add RSpec testing.  Yeah, I know this should have been done while I was coding.  I need to brush up on RSpec as well.
* Add a toggle button on the Artist list to show the albums.  http://localhost:3000/artists?show_albums=true

