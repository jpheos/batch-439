class Patient
  attr_reader :name, :cured
  attr_accessor :id, :room

  def initialize(attributes = {})
    @id    = attributes[:id]
    @name  = attributes[:name] || "No name"
    @cured = attributes[:cured] || false
    @room  = attributes[:room]
  end

  def cure
    @cured = true
  end

  def last_name=(last_name)
    @last_name = last_name
  end
end
