require_relative '../lib/cryptofolies'

describe "the caesar_cipher methode" do
  it "should be return crypto message" do
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
  end
end