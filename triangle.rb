require './polygon'

class Triangle<Polygon
  

private
  def set_number_of_sides
    @number_of_sides = 3   
  end

  def not_closed sides
    (sides[0]+sides[1]<= sides[2])|| (sides[0]+sides[2]<= sides[1])|| (sides[2]+sides[1]<= sides[0])
  end
end