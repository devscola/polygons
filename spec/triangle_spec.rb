require './triangle'

describe "A Triangle " do
  it "is also a Polygon" do
    expect(Triangle.new(2,2,3).class.ancestors).to include(Polygon)
  end

  it "has three sides" do
    expect(Triangle.new(2,2,3).number_of_sides).to eq(3)
  end

  it "needs three sides to be a Triangle" do
    expect{Triangle.new()}.to raise_error(ArgumentError)
    expect{Triangle.new(1)}.to raise_error(ArgumentError)
    expect{Triangle.new(1,2)}.to raise_error(ArgumentError)
    expect{Triangle.new(1,2,3,4)}.to raise_error(ArgumentError)
  end

  it "should be closed" do
    expect{Triangle.new(1,2,4)}.to raise_error(ArgumentError)
    expect{Triangle.new(2,2,4)}.to raise_error(ArgumentError)
  end

  it "should have all sides as positive numbers" do
    expect{Triangle.new(1,"patata",4)}.to raise_error(ArgumentError)
    expect{Triangle.new(20,-5,4)}.to raise_error(ArgumentError)
  end

end