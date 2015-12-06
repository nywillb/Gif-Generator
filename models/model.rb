require 'giphy'

Giphy::Configuration.configure do |config|
  config.version = v1
  config.api_key = dc6zaTOxFJmzC
end

class Gif
  #these are all the attributes of the song
  attr_accessor :name, :gif

  def initialize(song_name)
    #this is run when we use Song.new
    @numPlays = 0
    @name = song_name
    @albumArt = "http://dev.uclaradio.com/img/no_album_artwork.jpg"
  end

  #this a method that pretends we are playing the song
  def play
    return "playing #{@name}"
  end

end