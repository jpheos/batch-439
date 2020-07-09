require_relative '../acronymise'

describe "acronymise" do
  it "returns an empty string when passed an empty string" do
    actual = acronymise("")
    expected = ""
    expect(actual).to eq(expected)
  end

  it "returns the acronym on downcased sentences" do
    actual = acronymise("working from home")
    expected = "WFH"
    expect(actual).to eq(expected)
  end

  it "returns the acronym on upcased sentences" do
    actual = acronymise("AWAY FROM KEYBOARD")
    expected = "AFK"
    expect(actual).to eq(expected)
  end

end
