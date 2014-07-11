class Polygon

  def initialize(*sides)
    set_number_of_sides
    check_sides(sides)
    @sides=sides
  end

  def number_of_sides
    @number_of_sides
  end

  def check_sides sides
    check_sides_are_positive_numbers sides
    check_number_of_sides sides
    check_is_closed sides
  end
private

  def set_number_of_sides
    raise "not implemented"
  end

  def check_sides_are_positive_numbers sides
    error=ArgumentError.new("Non positive numeric side length")
    not_numeric=sides.each{|side| raise error if side <= 0 }
  end

  def check_number_of_sides sides
    raise ArgumentError.new("Not enough sides") if sides.size < @number_of_sides
    raise ArgumentError.new("Too many sides") if sides.size > @number_of_sides
  end

  def check_is_closed sides
    error=ArgumentError.new("Not closed")
    raise error if not_closed sides 
  end

  def not_closed sides
    raise "not implemented"
  end

end
