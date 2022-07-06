require "./lib/caesar-cipher.rb"

describe "caesar_cipher" do
  it "returns a properly ciphered string" do
    expect(caesar_cipher("hello", 5)).to eql("mjqqt")
  end

  it "returns a properly ciphered string" do
    expect(caesar_cipher("what a string!", 5)).to eql("bmfy f xywnsl!")
  end

  it "returns a properly ciphered string" do
    expect(caesar_cipher("777 da 3! RR a", 5)).to eql("777 if 3! WW f")
  end

  it "returns a properly ciphered string" do
    expect(caesar_cipher("said", 50)).to eql("Please enter number under 27")
  end

  it "returns a properly ciphered string" do
    expect(caesar_cipher("said da 8", -19)).to eql("Please enter positive number")
  end
end