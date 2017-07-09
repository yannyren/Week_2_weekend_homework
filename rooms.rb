class Rooms
  attr_reader(:room_number, :capacity, :guests_in_the_room, :song_list, :entry_fee)

  def initialize(room_number, capacity, fee)
    @room_number = room_number
    @capacity = capacity
    @guests_in_the_room = []
    @song_list = []
    @entry_fee = fee

  end

  def check_out_guest(guest)
    @guests_in_the_room.delete(guest)
  end 

  def add_songs(song)
    @song_list << song
  end 

  def check_in_guest_with_filters(guest)
    if @entry_fee <= guest.money && @guests_in_the_room.count < @capacity
      @guests_in_the_room << guest
    end
  end

  def song_list_has_guest_fav_song(guest)
    @song_list.each {|x| return "Whoo" if x.song_name == guest.fav_song}
  end

  # def song_list_has_guest_fav_song(guest)
  #   found = "?"
  #   @song_list.find {|x| found = "Whoo" if x.song_name == guest.fav_song}
  #   found
  # end



end 