require("minitest/autorun")

require_relative("../guest.rb")
require_relative("../song.rb")

class TestSong < MiniTest::Test
  def setup
    @song1 = Song.new("Beatles", "Hey Jude")
    @song2 = Song.new("Red Hot Chilli Peppers", "Under The Bridge")
    @song3 = Song.new("The Streets", "Fit But You Know It")
  end

  def test_artist_name
    assert_equal("Beatles", @song1.artist_name)
  end

  def test_song_name
    assert_equal("Under The Bridge", @song2.song_name)
  end

end
