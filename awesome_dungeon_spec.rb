require 'minitest/autorun'
require './awesome_dungeon'

describe Player do
  def setup
    @player = Player.new
  end
  it 'should have 100 hit points on creation' do
    assert_equal @player.hit_points, 100
  end
  it 'should lose hitpoint' do
    @player.hit(10)
    assert_equal @player.hit_points, 90
  end


  it 'should be dead when its hit points equal zero' do
    @player.hit(100)
    assert_equal @player.alive?, false
  end

  it 'should have have stats' do
    @player_with_stats = Player.new(1, 2, 4)
    assert_equal @player_with_stats.str, 1
  end

  it 'can enter combat' do
    assert_equal @player.in_combat?, false
    @player.enter_combat
    assert_equal @player.in_combat?, true
  end
end
