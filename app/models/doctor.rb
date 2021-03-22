class Doctor < ApplicationRecord
  has_many :appointments, class_name: "Appointment", foreign_key: "doctor_id", dependent: :destroy
  has_many :pacients, through: :appointments, source: :user
end
