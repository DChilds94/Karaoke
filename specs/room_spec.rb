require("minitest/autorun")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class TestRoom < MiniTest::Test
  def setup()
    @room = Room.new("Room01", 8)
  end

  def test_name
    assert_equal("Room01", @room.name)
  end

  def test_capacity
    assert_equal(8, @room.capacity)
  end 

end
