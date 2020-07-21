require "awesome_print"
require_relative "models/patient"
require_relative "models/room"
require_relative "repositories/patient_repository"

puts "Creation of Rooms"

p room1 = Room.new(id: 1, capacity: 2)

puts "--------------------"
puts "Creation of Patients"

patient_repository = PatientRepository.new("datas/patients.csv")

ap patient_repository.patients

# p Patient.new({ name: "Jojo", cured: false })
p jojo = Patient.new(
  name:  "Jojo",
  cured: false,
  room:  room1
)

jojo.last_name = "Blanchard"

# p jojo
# puts "Je mets Jojo dans la Room 1"

# jojo.room = room1
# room1.patients << jojo

# p jojo
# p room1


patient_repository.add(jojo)


