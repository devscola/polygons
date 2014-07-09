require './polygon'

class Triangle<Polygon
  NUMBER_OF_SIDES=3

  def initialize(*sides)
    check_sides(sides)
  end

  def number_of_sides
    NUMBER_OF_SIDES
  end

private 
  
  def check_sides sides
    check_sides_are_positive_numbers sides
    check_number_of_sides sides
    check_is_closed sides
  end

  def check_sides_are_positive_numbers sides
    error=ArgumentError.new("Non positive numeric side length")
    not_numeric=sides.select{|side| (side.class!=Fixnum)||(side<=0) }.size != 0
    raise error if not_numeric
  end

  def check_number_of_sides sides
    raise ArgumentError.new("Not enough sides") if sides.size < NUMBER_OF_SIDES
    raise ArgumentError.new("Too many sides") if sides.size > NUMBER_OF_SIDES
  end

  def check_is_closed sides
    error=ArgumentError.new("Not closed")
    not_closed=(sides[0]+sides[1]<= sides[2])|| (sides[0]+sides[2]<= sides[1])|| (sides[2]+sides[1]<= sides[0])
    raise error if not_closed 
  end
end