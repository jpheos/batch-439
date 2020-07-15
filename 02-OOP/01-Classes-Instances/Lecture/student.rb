require 'Date'

class Student
  # attr_reader :name, :degree, :grade, :last_name
  # attr_writer :name, :degree, :grade, :last_name

  # attr_accessor = reader + writer
  attr_accessor :name, :degree, :grade, :last_name, :birthday

  # call this method when we do Student.new
  def initialize(name, degree, grade)
    # puts "Je suis dans initialize"
    @name     = name
    @degree   = degree
    @grade    = grade
    @titi     = nil
    @tata     = nil
    @tutu     = nil
    @birthday = Date.parse("25/06/1986")
  end

  def summary
    return "#{@name} #{@last_name} | #{@degree} | #{@grade}"
  end

  # refacto with attr_reader
  # def last_name
  #   return @last_name
  # end

  # def name
  #   return @name
  # end

  # refacto with attr_writer
  # def last_name=(last_name)
  #   @last_name = last_name
  # end

  # def name=(name)
  #   @name = name
  # end

  def toto
    titi
    tata
    tutu
  end

  private

  def titi
    @titi = "titi"
  end

  def tata
    @tata = "tata"
  end

  def tutu
    @tutu = "tutu"
  end
end

















