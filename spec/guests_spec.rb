require('minitest/autorun')
require_relative('../guests')
require('pry')


class TestGuestName < Minitest::Test

def setup
  @tom = Guests.new("Tom", 35, "Singing in the rain")
end

def test_guest_name
  assert_equal("Tom", @tom.name)
end  

def test_guest_money
  assert_equal(35, @tom.money)
end 

def test_fav_song
  assert_equal("Singing in the rain", @tom.fav_song)
end 

def test_money__spent
  @tom.money_spent(0)
  assert_equal(0, @tom.money_spent)
end

def test_money__spent
  @tom.money_spent(10)
  assert_equal(10, @tom.money_spent)
end


end 