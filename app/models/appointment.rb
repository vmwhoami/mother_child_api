class Appointment < ApplicationRecord
  validates_presence_of :date_time, on: :create, message: "can't be blank"
  validates_presence_of :user, on: :create, message: "User can't be blank"
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :doctor, class_name: 'Doctor', foreign_key: 'doctor_id'
end
