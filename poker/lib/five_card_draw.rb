class ValueError < StandardError; end

class Card
  attr_reader :value

  def initialize(value)
    @value = value
    raise ValueError if value > 14 || value < 2
  end
end

class Spade < Card

  attr_reader :suit
  def initialize(value)
    super
    @suit = :s
  end 
end 

class Club < Card
  attr_reader :suit
  def initialize(value)
    super
    @suit = :c
  end 
end 

class Heart < Card
  attr_reader :suit
  def initialize(value)
    super
    @suit = :h
  end 
end 

class Diamond < Card
  attr_reader :suit
  def initialize(value)
    super
    @suit = :d
  end 
end 

##############################################

class Deck
  attr_reader :stack

  def initialize
    @stack = []
    create_deck
  end 

  def create_deck
    suits = [Spade, Club, Heart, Diamond]
    suits.each do |suit|
      (2..14).each do |value|
        stack << suit.new(value)
      end 
    end 
    stack.shuffle!
  end 
end