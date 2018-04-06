class Song

  attr_reader :artist, :track

  def initialize(artist, track)
    @artist = artist
    @track = track

    #create an array called music which has the artist_name as the key and the song_name as the value.
  end

  def play_song
    return "music is playing"
  end


end
