class Guests

attr_reader(:name, :money, :fav_song, :expenditure)

def initialize(name, money, fav_song)
  @name = name
  @money = money
  @fav_song = fav_song
  @expenditure = 0
end 

def money_spent(amount)
  @expenditure += amount
end




end 