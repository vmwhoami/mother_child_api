require 'rails_helper'

RSpec.describe Appointment, type: :model do
  context 'Appointment validations' do
    before(:each) do
      @user = User.create(fullname: 'John Doe', gender: 'male', email: 'johndoe@mail.com', password: 'password', age: 2)
      @doctor = Doctor.create(name: 'John Doe' , title: 'testing',info: "Some info",room: 202,recieving_hours:"12-15")
    end

    it 'Validates presence of date_time' do
      a = Appointment.new(user: @user, doctor: @doctor)
      expect(a.valid?).to eq(false)
    end

    it 'Validates presence of user' do
      a = Appointment.new(doctor: @doctor, date_time: Time.now)
      expect(a.valid?).to eq(false)
    end
    it 'Validates presence of doctor' do
      a = Appointment.new(user: @user, date_time: Time.now)
      expect(a.valid?).to eq(false)
    end
  end

  context 'Appointment associations' do
    it { should belong_to(:doctor) }
    it { should belong_to(:user) }
  end
end
