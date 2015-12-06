class Song
  #these are all the attributes of the song
  attr_accessor :name, :genre, :artist, :numPlays, :albumArt, :album

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