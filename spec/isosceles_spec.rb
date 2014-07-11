require './isosceles'

describe "Isosceles" do
  it "its a Triangle" do
    expect(Isosceles.new(2,3,3)).to be_a(Triangle)   
  end  
end