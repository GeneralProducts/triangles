class RowOfEquilateralTriangles
  def initialize(top_left:, height:, width:, first_orientation:)
    @top_left          = top_left
    @height            = height
    @width             = width
    @first_orientation = first_orientation
    @triangles         = []
    @righthand_side    = top_left.x + width
  end

  def last_triangle_rightmost
    if last_triangle
      last_triangle.rightmost
    else
      top_left.x
    end
  end

  def polygons
    triangles
  end

  def last_triangle
    triangles.last
  end

  def build!
    rightmost     = top_left.x
    orientation   = first_orientation.dup
    next_top_left = top_left.dup
    until last_triangle_rightmost >= righthand_side do
      triangles << EquilateralTriangle.from_top_left(origin: next_top_left, height: height, orientation: orientation)
      orientation.swap!
      next_top_left.go_right(last_triangle.width / 2.0)
    end
    self
  end

  private

  attr_reader :top_left, :height, :width, :first_orientation, :righthand_side, :triangles
end
