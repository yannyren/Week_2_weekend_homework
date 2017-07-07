class Rooms
  attr_reader(:room_number, :capacity, :guests_in_the_room, :song_list)

  def initialize(room_number, capacity)
    @room_number = room_number
    @capacity = capacity
    @guests_in_the_room = []
    @song_list = []
  end

  def check_in_guest (guest)
    @guests_in_the_room << guest
  end 

  def check_out_guest(guest)
    @guests_in_the_room.delete(guest)
  end 

  def add_songs(song)
    @song_list << song
  end 

end 