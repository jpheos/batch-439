require_relative "../animal"

describe "Feature#1" do
  describe Animal do
    describe "#initialize" do
      it "creates an Animal instance" do
        animal = Animal.new("Babe")

        expect(animal).to be_an(Animal)
      end
    end

    describe "#name" do
      it "creates an Animal instance" do
        animal = Animal.new("Babe")

        expect(animal.name).to eq("Babe")
      end
    end
  end
end
