require './triangle'

describe "A Triangle " do
  it "is also a Polygon" do
    expect(Triangle.new.class.ancestors).to include(Polygon)
  end

end