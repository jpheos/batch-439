require_relative 'lion'
require_relative 'meerkat'
require_relative 'wharthog'

simba = Lion.new("Simba")
nala  = Lion.new("Nala")
timon = Meerkat.new("Timon")
pumba = Wharthog.new("Pumbaa")


animals = [simba, nala, timon, pumba]
animals.each do |animal|
  puts animal.talk
end

