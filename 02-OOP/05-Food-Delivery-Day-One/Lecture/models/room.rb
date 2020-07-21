class Room
  attr_reader :capacity
  attr_accessor :id, :patients


  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end
end
