class Room

  attr_reader :name

  def initialize(name, capacity, cost)
    @name = name
    @capacity = capacity
    @songs = []
    @guests = []
    @cost = cost
    @till_balance = 100
  end

  def capacity
    return @capacity
  end

  def till_balance
    return @till_balance
  end

  def cost
    return @cost
  end

  def add_song(song)
    @songs.push(song)
  end

  def get_song
    return @songs
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

  def total_guests
    return @guests.count
  end

  # def total_guests()
  #   if @guests.count != nil
  #     return @guests.count
  #   else
  #     return "room is empty"
  #   end
  # end

  def guests_leave_room
    @guests.clear.count
  end

  def person_leave_room
    @guests.pop
    return @guests
  end
  #if the capacity is greater than the amount of guests then you can add the
  #guests to the room. Else you cannot add a guest to the room

  # def fill_room(guets_in_room)
  #   if guests_in_room < total_guests
  #     return "You can have this room"
  #   end
  # end
  #
  # ef sell_drink(drink, customer)
  #     if (check_id(customer)) && (customer.wallet >= drink.price) && (customer.drunk_level <= 80)
  #       @till_balance += drink.price
  #       customer.buy_a_drink(drink)
  #     else
  #       return "You can't buy a drink"
  #     end
  #   end

  def add_guest(guest)
    @guests.push(guest)
  end

  def sell_room(room, guest)
    if guest.wallet >= room.cost
      @till_balance += cost
      guest.rent_room(room)
    else
      return "no"
    end
  end


end

#   def add_guest(guest)
#     if total.guest == room.capacity
#     @guests.push(guest)
#   else
#     return "Full"
#   end
# end
