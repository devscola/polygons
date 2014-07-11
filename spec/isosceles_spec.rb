require './isosceles'

describe "Isosceles" do
  it "its a Triangle" do
    expect(Isosceles.new(2,3)).to be_a(Triangle)   
  end

  it "its defined with a pair of sides" do
    repeated = 2
    unique = 3
    expect do
      Isosceles.new(repeated,unique)
    end.to_not raise_error(ArgumentError)   
  end  

  it "still knows how to calculate its perimeter" do
    expect(Isosceles.new(2,3).perimeter).to eq(7)   
  end

end