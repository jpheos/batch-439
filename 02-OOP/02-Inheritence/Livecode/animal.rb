class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    return ["Ecdysozoa", "Lophotrochozoa", "Deuterostomia", "Other Bilateria phyla", "Non-Bilateria"]
  end

  def eat(food)
    return "#{@name} eats #{food}"
  end

end
