class Patient < ActiveRecord::Base
  has_many :consultations
  has_many :doctors, through: :consultations

  # def doctors
  #   consultations.map do |consultation|
  #     consultation.doctor
  #   end
  # end
end



