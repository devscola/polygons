require './polygon'

class Triangle<Polygon
  

private
  def set_number_of_sides
    @number_of_sides = 3   
  end

  def check_is_closed sides
    error=ArgumentError.new("Not closed")
    not_closed=(sides[0]+sides[1]<= sides[2])|| (sides[0]+sides[2]<= sides[1])|| (sides[2]+sides[1]<= sides[0])
    raise error if not_closed 
  end
end