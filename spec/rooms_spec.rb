require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../song')
require_relative('../rooms')
require('pry')

class TestRooms < Minitest::Test

  def setup
    @tom = Guests.new("Tom", 35)
    @jerry = Guests.new("Jerry", 15)
    @harry = Guests.new("harry", 25)
    

    @only_you = Songs.new("Only you")
    @baby = Songs.new("Baby")

    @room1 = Rooms.new("1", 30, 20)
    @room2 = Rooms.new("2", 20, 20)
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

  def test_song_list
    assert_equal([], @room1.song_list)
  end 

  def test_entry_fee
    assert_equal(20, @room1.entry_fee)
  end 

  def test_check_out_guest
    @room1.check_in_guest_with_filters(@tom)
    @room1.check_out_guest(@tom)
    assert_equal(0, @room1.guests_in_the_room.count)
  end

  def test_add_song
    @room1.add_songs(@only_you)
    assert_equal(1, @room1.song_list.count)
  end 

  def test_check_in_guest_with_filters
    @room1.check_in_guest_with_filters(@tom)
    assert_equal(1, @room1.guests_in_the_room.count)
  end 


end 