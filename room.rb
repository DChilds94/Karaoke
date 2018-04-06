class Room

  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = 8
    @songs = []
    @guests = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def get_song
    return @songs
  end

  def add_guest(guest)
    @guests.push(guest)
  end

  def get_guest
    return @guests
  end

  def get_song_by_name(name)
    # loop through the song in the song array
    # if the song's name is the same as the name passed in
    # return the song
    for song in @songs
      if song.track == name
        return song
      end
    end
  end

  # def total_guests
  #   return @guests.count
  # end

  def total_guests()
    if @guests.count != nil
      return @guests.count
    else
      return "room is empty"
    end
  end

  def guests_leave_room
    @guests.clear.count
  end

  def person_leave_room
    @guests.pop
    return @guests
  end






end
