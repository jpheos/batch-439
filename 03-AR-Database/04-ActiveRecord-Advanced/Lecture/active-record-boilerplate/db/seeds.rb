Intern.destroy_all
Doctor.destroy_all

doctor1 = Doctor.create!(first_name: 'doctor_first_name1', last_name: 'doctor_last_name1')
doctor2 = Doctor.create!(first_name: 'doctor_first_name2', last_name: 'doctor_last_name2')
doctor3 = Doctor.create!(first_name: 'doctor_first_name3', last_name: 'doctor_last_name3')
doctor4 = Doctor.create!(first_name: 'doctor_first_name4', last_name: 'doctor_last_name4')


intern11 = Intern.new(first_name: 'intern_first_name11',
                      last_name: 'intern_last_name11')

intern11.doctor = doctor1
intern11.save

intern12 = Intern.new(first_name: 'intern_first_name12',
                      last_name: 'intern_last_name12',
                      doctor: doctor1
                      )
intern12.save

intern13 = Intern.new(first_name: 'intern_first_name13',
                      last_name: 'intern_last_name13')

intern13.doctor = doctor1
intern13.save





intern21 = Intern.new(first_name: 'intern_first_name21',
                      last_name: 'intern_last_name21')

intern21.doctor = doctor2
intern21.save


intern22 = Intern.new(first_name: 'intern_first_name22',
                      last_name: 'intern_last_name22')

intern22.doctor = doctor2

intern22.save!


patient1 = Patient.create!(first_name: 'patient_first_name1', last_name: 'patient_last_name1')
patient2 = Patient.create!(first_name: 'patient_first_name2', last_name: 'patient_last_name2')
patient3 = Patient.create!(first_name: 'patient_first_name3', last_name: 'patient_last_name3')


Consultation.create(patient: patient1, doctor: doctor1)
Consultation.create(patient: patient1, doctor: doctor2)
Consultation.create(patient: patient2, doctor: doctor2)
Consultation.create(patient: patient2, doctor: doctor3)
Consultation.create(patient: patient3, doctor: doctor1)





