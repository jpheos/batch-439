require_relative "../meerkat"
require_relative "../wharthog"
require_relative "../lion"

describe "Feature#2" do
  describe Lion do
    describe "#initialize" do
      it "creates an Lion instance and inherits from Animal" do
        lion = Lion.new("Nala")

        expect(lion).to be_an(Lion)
        expect(lion.name).to eq("Nala")
      end
    end
  end

  describe Meerkat do
    describe "#initialize" do
      it "creates an Meerkat instance and inherits from Animal" do
        meerkat = Meerkat.new("Timon")

        expect(meerkat).to be_an(Meerkat)
        expect(meerkat.name).to eq("Timon")
      end
    end
  end

  describe Wharthog do
    describe "#initialize" do
      it "creates an Warthog instance and inherits from Animal" do
        whartog = Wharthog.new("Pumbaa")

        expect(whartog).to be_an(Wharthog)
        expect(whartog.name).to eq("Pumbaa")
      end
    end
  end
end
