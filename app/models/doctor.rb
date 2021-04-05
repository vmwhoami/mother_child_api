class Doctor < ApplicationRecord
  validates_presence_of :name, on: :create, message: "Name can't be blank"
  validates_presence_of :title, on: :create, message: "Title can't be blank"
  validates_presence_of :info, on: :create, message: "Info can't be blank"
  validates_presence_of :room, on: :create, message: "Room can't be blank"
  validates_presence_of :recieving_hours, on: :create, message: "Recieving hours can't be blank"

  has_many :appointments, class_name: 'Appointment', foreign_key: 'doctor_id', dependent: :destroy
  has_many :pacients, through: :appointments, source: :user
end
