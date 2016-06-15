class MarsRover
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end
  def print
    puts "#{@x} #{@y} #{@direction}"
  end
  def move(current_move)
    if current_move.eql?('M')
      if @direction == 'N'
        @y = @y+1
      elsif @direction == 'S'
        @y = @y-1
      elsif @direction == 'E'
        @x = @x+1
      elsif @direction == 'W'
        @x = @x-1
      end
    elsif current_move.eql?('L')
      if @direction == 'N'
        @direction = 'W'
      elsif @direction == 'E'
        @direction = 'N'
      elsif @direction == 'S'
        @direction = 'E'
      elsif @direction == 'W'
        @direction = 'S'
      end
    elsif current_move.eql?('R')
      if @direction == 'N'
        @direction = 'E'
      elsif @direction == 'E'
        @direction = 'S'
      elsif @direction == 'S'
        @direction = 'W'
      elsif @direction == 'W'
        @direction = 'N'
      end
    else
      puts "Not a valid move"
    end
  end
  def x=(x)
    @x = x
  end
  def x
    @x
  end
  def y=(y)
    @y = y
  end
  def y
    @y
  end
  def direction
    @direction
  end
end
