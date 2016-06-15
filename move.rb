require_relative 'mars_surface.rb'
require_relative 'mars_rover.rb'
def move_rover_on_mars_surface
  surface_values = gets.chomp.split(' ')
  mars_surface = MarsSurface.new(surface_values[0].to_i, surface_values[1].to_i)
  while (currentline = gets.chomp)
    rover_details = currentline.split(' ')
    current_rover = MarsRover.new( rover_details[0].to_i, rover_details[1].to_i, rover_details[2])
    movements_line = gets.chomp
    movements = movements_line.split("")
    movements.each do |current_move|
      current_rover.move(current_move)
      if !mars_surface.is_point_on_surface?(current_rover.x, current_rover.y)
        puts "Oops! the rover fell off the surface!"
        break;
      end
    end
    current_rover.print
  end
end

move_rover_on_mars_surface
