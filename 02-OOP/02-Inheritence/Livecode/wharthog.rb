require_relative 'animal'

class Wharthog < Animal
  def talk
    return "#{@name} grunt"
  end
end
