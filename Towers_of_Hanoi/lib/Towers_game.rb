class Tower 
  attr_reader :stack
  def initialize
    @stack = [[3,2,1], [], []]
  end 

  def move(tower1, tower2)
    from_tower = stack[tower1]
    to_tower = stack[tower2]

    to_tower << from_tower.pop
    stack
  end

  def valid_move?(tower1, tower2)
    from_tower = stack[tower1]
    to_tower = stack[tower2]

    return false if from_tower.empty?
    return true if to_tower.empty?
    from_tower.last < to_tower.first
  end
end 