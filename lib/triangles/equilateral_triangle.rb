require "triangles/polygon"

class EquilateralTriangle < Polygon
  WIDTH_TO_HEIGHT = 1.1547
  def initialize(*points)
    raise "Must be three points, got #{points.size}" unless points.size == 3
    super
  end

  def self.from_top_left(origin:, height:, orientation:)
    if orientation.up?
      from_top_left_up(origin: origin, height: height)
    else
      from_top_left_down(origin: origin, height: height)
    end
  end

  private_class_method def self.from_top_left_up(origin:, height:)
    a = origin.dup.go_down(height)
    b = origin.dup.go_right(height * WIDTH_TO_HEIGHT/2.0)
    c = origin.dup.go_right(height * WIDTH_TO_HEIGHT).go_down(height)
    self.new(a,b,c)
  end

  private_class_method def self.from_top_left_down(origin:, height:)
    a = origin.dup
    b = origin.dup.go_right(height * WIDTH_TO_HEIGHT/2.0).go_down(height)
    c = origin.dup.go_right(height * WIDTH_TO_HEIGHT)
    self.new(a,b,c)
  end
end
