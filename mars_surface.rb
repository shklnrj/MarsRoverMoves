class MarsSurface
  def initialize(top_x, top_y)
    @top_x = top_x
    @top_y = top_y
  end
  def is_point_on_surface?(x, y)
    if (x>=0 && x<=@top_x ) &&( y>=0 && y<=@top_y)
      true
    else
      false
    end
  end
  def print
    puts "The top point is x = #{@top_x} and y = #{@top_y}"
  end
end
