require_relative "../animal"
require_relative "../meerkat"
require_relative "../wharthog"
require_relative "../lion"

describe "Feature#6" do
  describe Animal do
    describe "#eat" do
      it "returns a sentence stating the animal is eating some food" do
        animal   = Animal.new("Babe")
        sentence = animal.eat("a carrot")

        expect(sentence).to eq("Babe eats a carrot")
      end
    end
  end

  describe Meerkat do
    describe "#eat" do
      it "returns a sentence stating the animal is eating some food" do
        meerkat  = Meerkat.new("Timon")
        sentence = meerkat.eat("a carrot")

        expect(sentence).to eq("Timon eats a carrot")
      end
    end
  end

  describe Wharthog do
    describe "#eat" do
      it "creates an Warthog instance" do
        whartog  = Wharthog.new("Pumbaa")
        sentence = whartog.eat("a carrot")

        expect(sentence).to eq("Pumbaa eats a carrot")
      end
    end
  end

  describe Lion do
    describe "#eat" do
      it "overrides Animal#eat and returns a cruel sentence" do
        simba    = Lion.new("Simba")
        sentence = simba.eat("a gazelle")

        expect(sentence).to eq("Simba eats a gazelle. Law of the Jungle!")
      end
    end
  end
end
