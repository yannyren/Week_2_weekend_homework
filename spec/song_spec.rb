require('minitest/autorun')
require_relative('../song')
require('pry')

class Song < Minitest::Test

def test_song_name
  only_you = Songs.new("Only you")
  assert_equal("Only you", only_you.song_name)
end  


end 