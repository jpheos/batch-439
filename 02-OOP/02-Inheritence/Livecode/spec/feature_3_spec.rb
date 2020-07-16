require_relative "../animal"
require_relative "../meerkat"
require_relative "../wharthog"
require_relative "../lion"

describe "Feature#3" do
  describe Lion do
    describe "#talk" do
      it "returns a sentence stating the lion is roaring" do
        simba = Lion.new("Simba")

        expect(simba.talk).to eq("Simba roars")
      end
    end
  end

  describe Meerkat do
    describe "#talk" do
      it "returns a sentence stating the meerkat is barking" do
        meerkat = Meerkat.new("Timon")

        expect(meerkat.talk).to eq("Timon bark")
      end
    end
  end

  describe Wharthog do
    describe "#talk" do
      it "returns a sentence stating the whartog is grunting" do
        whartog = Wharthog.new("Pumba")

        expect(whartog.talk).to eq("Pumba grunt")
      end
    end
  end
end
