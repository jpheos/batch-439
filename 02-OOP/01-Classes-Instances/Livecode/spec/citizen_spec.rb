require_relative "../citizen"
describe Citizen do

  describe "#can_vote?" do
    it "returns true if the citizen is 18 years old" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end
    it "returns false if the citizen is less than 18 years old" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "returns full_name of citizen" do
      citizen1 = Citizen.new("Alex", "Bouvier", 18)
      expect(citizen1.full_name).to eq("Alex Bouvier")

      citizen2 = Citizen.new("Joseph", "Blanchard", 17)
      expect(citizen2.full_name).to eq("Joseph Blanchard")
    end
  end
end
