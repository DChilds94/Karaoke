require("minitest/autorun")

require_relative("../guest.rb")
require_relative("../song.rb")

class TestGuest < MiniTest::Test
  def setup()
    @guest1 = Guest.new("Daniel", 50)
    @guest2 = Guest.new("Nick", 75)
    @guest3 = Guest.new("Chris", 100)
  end

  def test_name
    assert_equal("Daniel", @guest1.name)
  end

  def test_wallet
    assert_equal(75, @guest2.wallet)
  end

end
