class Polygon
  def initialize(*points)
    @points = points
  end

  attr_reader :points, :color

  def color!(hex)
    @color = hex
    self
  end

  def to_s
    points.map(&:to_s).join(" ")
  end

  def points_string
    points.map(&:to_s).join(" ")
  end

  def style_string
    "fill:#{color}" if color
  end

  def to_svg
    {
      points: points_string,
      style:  style_string
    }
  end

  def rightmost
    points.map(&:x).max
  end

  def leftmost
    points.map(&:x).min
  end

  def width
    rightmost - leftmost
  end
end
