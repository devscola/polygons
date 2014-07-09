require './polygon'

class Triangle<Polygon
  def initialize(*sides)
    check_sides(sides)
  end

  def number_of_sides
    3
  end

private 
  def check_sides sides
    raise ArgumentError.new("Not enough sides") if sides.size < 3
    raise ArgumentError.new("Too many sides") if sides.size > 3
  end
end