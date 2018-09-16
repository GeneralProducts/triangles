class AreaOfEquilateralTriangles
  def initialize(top_left:, height:, width:, first_orientation:, number_of_rows:)
    @top_left          = top_left
    @height            = height
    @width             = width
    @first_orientation = first_orientation
    @number_of_rows    = number_of_rows
    @rows              = []
    @height_of_row     = height / number_of_rows
  end

  def polygons
    rows.flat_map(&:polygons)
  end

  def build!
    orientation   = first_orientation.dup
    next_top_left = top_left.dup
    number_of_rows.times.each do
      rows << RowOfEquilateralTriangles.new(
        top_left:          next_top_left,
        height:            height_of_row,
        width:             width,
        first_orientation: orientation).build!
      orientation.swap!
      next_top_left.go_down(height_of_row)
    end
    self
  end

  def random_colors!(colors)
    polygons.each do |polygon|
      polygon.color!(colors.sample)
    end
    self
  end

  def logo_cut_out!(logo)
    logo.each do |row_num, triangle_num|
      row       = rows[row_num]
      raise "Out of row range" unless row
      triangles = if triangle_num.is_a? Range
                    triangle_num.to_a
                  elsif triangle_num.is_a? Integer
                    [triangle_num]
                  elsif triangle_num.is_a? Enumerable
                    triangle_num
                  else
                    raise "Must be a range, integer or enumerable; is a #{triangle_num.class}"
                  end
      triangles.each do |triangle|
        row.polygons[triangle].color!("white")
      end
    end
    self
  end

  attr_reader :top_left, :height, :width, :first_orientation, :rows, :number_of_rows

  private

  attr_reader :height_of_row
end
