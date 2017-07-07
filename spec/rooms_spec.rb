require('minitest/autorun')
require_relative('../guests')
require_relative('../song')
require_relative('../rooms')
require('pry')

class TestRooms < Minitest::Test

  def setup
    @tom = Guests.new("Tom")
    @jerry = Guests.new("Jerry")
    @harry = Guests.new("harry")
    

    @only_you = Songs.new("Only you")
    @baby = Songs.new("Baby")

    @room1 = Rooms.new("1", 30)
  end

  def test_room_number
    assert_equal("1", @room1.room_number)
  end 

  def test_capacity
    assert_equal(30, @room1.capacity)
  end 

  def test_guests_in_the_room
    assert_equal([], @room1.guests_in_the_room)
  end 

  def test_check_in_guest
    guest = @tom
    @room1.check_in_guest(guest)
    assert_equal(1, @room1.guests_in_the_room.count)
  end 

  def test_check_out_guest
    @room1.check_in_guest(@tom)
    @room1.check_out_guest(@tom)
    assert_equal(0, @room1.guests_in_the_room.count)
  end

  def test_add_song
    @room1.add_songs(@only_you)
    assert_equal(1, @room1.song_list.count)
  end 

end 