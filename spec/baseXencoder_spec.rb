require 'baseXEncoder'

describe BaseXEncoder::BaseXEncoder do
  it "356 should be 'AAFk'" do
    BaseXEncoder::BaseXEncoder.encode(356).should eql("AAFk")
  end

  it "9632 should be 'ACWg'" do
    BaseXEncoder::BaseXEncoder.encode(9632).should eql("ACWg")
  end

  it "'ACWg' should be 9632" do
    BaseXEncoder::BaseXEncoder.decode("ACWg").should eql(9632)
  end
end