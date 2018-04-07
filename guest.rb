class Guest

  attr_reader :name, :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def rent_room(room)
  @wallet -= room.cost
end

end
