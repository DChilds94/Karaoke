require("minitest/autorun")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class TestGuest < MiniTest::Test
  def setup()
    @guest1 = Guest.new("Daniel", 50)
    @guest2 = Guest.new("Nick", 75)
    @guest3 = Guest.new("Chris", 100)
    @room = Room.new("Room01", 8, 5)
    @song1 = Song.new("Beatles", "Hey Jude")
    @song2 = Song.new("Blur", "Song 2")
    @song3 = Song.new("The Streets", "Dry Your Eyes Mate")
    @song4 = Song.new("Oasis", "Wonderwall")
    # @room.add_song(@song1)
    # @room.add_song(@song2)
    # @room.add_song(@song3)
    # @room.add_guest(@guest1)
    # @room.add_guest(@guest2)
    # @room.add_guest(@guest3)
  end


  def test_name
    assert_equal("Daniel", @guest1.name)
  end

  def test_wallet
    assert_equal(75, @guest2.wallet)
  end

  def test_rent_room
    @guest1.rent_room(@room)
    assert_equal(45, @guest1.wallet)
  end
  
end
