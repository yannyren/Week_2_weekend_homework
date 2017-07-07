require('minitest/autorun')
require_relative('../guests')
require('pry')


class TestGuestName < Minitest::Test

def test_guest_name
  tom = Guests.new("Tom")
  assert_equal("Tom", tom.name)
end  

end 