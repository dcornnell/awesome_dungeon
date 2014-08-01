
class Player
  attr_accessor :hit_points, :str, :int, :dex, :combat
  def initialize (str = 0, int = 0, dex = 0)
    @hit_points = 100
    @str = str
    @int = int
    @dex = dex
    @combat = false
  end

  def hit(hitpoints)
    @hit_points -= hitpoints
  end

  def alive?
    if @hit_points > 0
      return true
    else
      return false
    end
  end

  def enter_combat
    @combat = true
  end

  def leave_combat
    @combat = false
  end
  def in_combat?
    return true if @combat == true
    false
  end

end
