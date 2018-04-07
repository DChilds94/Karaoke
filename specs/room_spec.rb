require("minitest/autorun")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class TestRoom < MiniTest::Test
  def setup()
    @room = Room.new("Room01", 8, 5)
    # @room2 = Room.new("Room02", 2, 5)
    @song1 = Song.new("Beatles", "Hey Jude")
    @song2 = Song.new("Blur", "Song 2")
    @song3 = Song.new("The Streets", "Dry Your Eyes Mate")
    @song4 = Song.new("Oasis", "Wonderwall")
    @room.add_song(@song1)
    @room.add_song(@song2)
    @room.add_song(@song3)
    @guest1 = Guest.new("Daniel", 50)
    @guest2 = Guest.new("Nick", 75)
    @guest3 = Guest.new("Chris", 100)
    @guest4 = Guest.new("Sally", 0)
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
  end

  def test_name
    assert_equal("Room01", @room.name)
  end

  def test_till_balance
    assert_equal(100, @room.till_balance)
  end

  def test_cost
    assert_equal(5, @room.cost)
  end

  def test_capacity
    assert_equal(8, @room.capacity)
  end

  def test_add_song
    @room.add_song(@song4)
    assert_equal([@song1, @song2, @song3, @song4], @room.get_song)
  end

  def test_get_song
    assert_equal([@song1, @song2, @song3], @room.get_song)
  end

  def test_get_song_by_artist_name
    assert_equal("Blur", @song2.artist)
  end

  def test_get_song_by_song_name
    assert_equal(@song1, @room.get_song_by_name("Hey Jude"))
  end

  def test_get_guest
    assert_equal([@guest1, @guest2, @guest3], @room.get_guest)
  end

  def test_total_guests_in_room
      assert_equal(3, @room.total_guests)
  end

  def test_total_guests_in_room__no_guests
    room = Room.new("Room02", 8, 5)
    assert_equal(0, room.total_guests)
  end

  def test_guests_leave_room_all_guests_leave
    assert_equal(0, @room.guests_leave_room)
  end

  def test_person_leave_room_single_guest
    assert_equal([@guest1, @guest2], @room.person_leave_room)
  end

  def test_add_guest
    result = @room.add_guest(@guest4)
    assert_equal([@guest1, @guest2, @guest3, @guest4], result)
  end

  def test_sell_room
    @room.sell_room(@room, @guest1)
    assert_equal(105, @room.till_balance)
  end

  def test_sell_room_no_money
    result = @room.sell_room(@room, @guest4)
    assert_equal("no", result)
  end

  # def test_sell_drink
  #     @pub.sell_drink(@drink1, @customer1)
  #     assert_equal(103, @pub.till_balance)
  #   end





end
