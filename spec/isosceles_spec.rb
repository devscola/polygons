require './isosceles'

describe "Isosceles" do
  it "its a Triangle" do
    expect(Isosceles.new).to be_a(Triangle)   
  end  
end