class Point
  def initialize(x,y)
    @x = x
    @y = y
  end

  def go_down(dy)
    @y += dy
    self
  end

  def go_right(dx)
    @x += dx
    self
  end

  def go_up(dy)
    @y -= dy
    self
  end

  def go_left(dx)
    @x -= dx
    self
  end

  def to_s
    "#{x},#{y}"
  end

  def distance_from(point:)
    x_distance = self.x - point.x
    y_distance = self.y - point.y
    sqrt(x*x + y*y)
  end

  attr_reader :x, :y
end
