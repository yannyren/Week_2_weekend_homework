require('minitest/autorun')
require_relative('../guests')
require('pry')


class TestGuestName < Minitest::Test

def setup
  @tom = Guests.new("Tom", 35)
end

def test_guest_name
  assert_equal("Tom", @tom.name)
end  

def test_guest_money
  assert_equal(35, @tom.money)
end 

end 