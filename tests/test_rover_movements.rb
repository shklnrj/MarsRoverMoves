require "test/unit"
require_relative "../mars_rover.rb"
require_relative "../mars_surface.rb"

class TestRoverMovements < Test::Unit::TestCase
  def test_rover_is_on_surface
    mars_surface = MarsSurface.new(5, 5)
    mars_rover = MarsRover.new(1, 1, 'N')
    "MMLR".split("").each do |move|
      mars_rover.move(move)
    end
    assert_equal(mars_surface.is_point_on_surface?(mars_rover.x, mars_rover.y), true)
  end
  def test_rover_fell_off_the_surface
    mars_surface = MarsSurface.new(2, 2)
    mars_rover = MarsRover.new(1, 1, 'N')
    "MMM".split("").each do |move|
      mars_rover.move(move)
    end
    assert_equal(mars_surface.is_point_on_surface?(mars_rover.x, mars_rover.y), false)
  end
  def test_position_of_rover_after_moves
    mars_surface = MarsSurface.new(5, 5)
    mars_rover = MarsRover.new(1, 2, 'N')
    "LMLMLMLMM".split("").each do |move|
      mars_rover.move(move)
    end
    assert_equal(mars_rover.x, 1)
    assert_equal(mars_rover.y, 3)
    assert_equal(mars_rover.direction, 'N')
  end
end
