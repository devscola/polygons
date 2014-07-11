require './polygon'

class Triangle<Polygon
  

private
  def set_number_of_sides
    @number_of_sides = 3   
  end

  def not_closed sides
    bigest_side = sides.max
    perimeter= sides.inject { |sum, side| sum+side }
    sum_of_lesser_sides = (perimeter - bigest_side)
    sum_of_lesser_sides <= bigest_side
  end
end