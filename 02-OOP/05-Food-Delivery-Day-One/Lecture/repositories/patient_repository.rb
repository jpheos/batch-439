require 'csv'

class PatientRepository
  attr_reader :patients, :next_id

  def initialize(csv_file)
    # [...]
    @patients = []
    load_csv(csv_file)
  end

  def add(patient)
    puts "------"
    print "Next Id : "
    p @next_id
    patient.id = @next_id
    @next_id += 1
    puts "------"
    print "Next Id : "
    p @next_id
    @patients << patient
    puts "------"
    print "Patients"
    ap @patients

    # save_csv
  end

  def load_csv(csv_file)
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:cured] = row[:cured] == "true"  # Convert column to boolean
      @patients << Patient.new(row)
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end
