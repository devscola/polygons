require './polygon'

class Triangle<Polygon
  

  def perimeter (the_sides = @sides)
    the_sides.inject { |sum, side| sum+side }
  end

private
  def set_number_of_sides
    @number_of_sides = 3   
  end

  def not_closed a_bunch_of_sides
    bigest_side = a_bunch_of_sides.max
    sum_of_lesser_sides = (perimeter(a_bunch_of_sides) - bigest_side)
    sum_of_lesser_sides <= bigest_side
  end
end