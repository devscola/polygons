require './triangle'

describe "A Triangle " do
  it "is also a Polygon" do
    expect(Triangle.new.class.ancestors).to include(Polygon)
  end

  it "has three sides" do
    expect(Triangle.new.number_of_sides).to eq(3)
  end

end