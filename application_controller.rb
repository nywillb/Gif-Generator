require 'bundler'
require './models/model.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    jam = Song.new("Jam")
    jam.albumArt = "https://archangelmichael777.files.wordpress.com/2015/01/mj-dangerous-cover.jpg"
    jam.album = "Dangerous"
    jam.artist = "Michael Jackson"

    billiejean = Song.new("Billie Jean")
    billiejean.albumArt = "http://photos.imageevent.com/afap/wallpapers/michaeljackson/huge/04_billie_jean.jpg"
    billiejean.album = "Thriller"
    billiejean.artist = "Michael Jackson"

    @songs = [jam, billiejean]
    erb :index
  end

  get '/kanye' do
    runaway = Song.new("Run Away")
    runaway.albumArt = "https://upload.wikimedia.org/wikipedia/en/6/66/Runaway_Kanye_West_artwork.png"
    runaway.album = "My Beautiful Dark Twisted Fantasy"
    runaway.artist = "Kanye Wests"
    
    @songs = [runaway]
    erb :index
  end

end