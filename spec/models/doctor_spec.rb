require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe "Doctor validation" do
    it 'Doctor is expected to have all fields ' do
      d = Doctor.new(name: 'John Doe', gender: 'male', title: 'testing')
      expect(d.valid?).to eq(true)
    end
    it 'Doctor is expected to have name field ' do
      d = Doctor.new( gender: 'male', title: 'testing')
      expect(d.valid?).to eq(false)
    end

    it 'Doctor is title completed ' do
      d = Doctor.new( name: 'John Doe',gender: 'male')
      expect(d.valid?).to eq(false)
    end
 
  context 'Doctor Associations' do
    it { should have_many(:appointments) }
    it { should have_many(:pacients) }
  end
end
end
