require_relative "../animal"

describe "Feature#5" do
  describe Animal do
    describe ".phyla" do
      it "returns the four phyla of the animal kingdom" do
        phyla = Animal.phyla

        expect(phyla.size).to eq(5)
        expect(phyla).to eq(
          ['Ecdysozoa', 'Lophotrochozoa', 'Deuterostomia', 'Other Bilateria phyla', 'Non-Bilateria']
        )
      end
    end
  end
end
