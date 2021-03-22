require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User validations' do
    it 'Fullname should be present' do
      u = User.new(fullname: '',
                   gender: 'male',
                   email: 'johndoe@mail.com',
                   password: 'password')
      expect(u.valid?).to eq(false)
    end
    it 'Gender should be present' do
      u = User.new(fullname: 'John Doe',
                   gender: '',
                   email: 'johndoe@mail.com',
                   password: 'password')
      expect(u.valid?).to eq(false)
    end

    it 'Email should be present' do
      u = User.new(fullname: 'John Doe',
                   gender: 'male',
                   email: '',
                   password: 'password')
      expect(u.valid?).to eq(false)
    end
    it 'Email should be present' do
      u = User.new(fullname: 'John Doe',
                   gender: 'male',
                   email: 'johndoe@mail.com',
                   password: '')
      expect(u.valid?).to eq(false)
    end
  end
end
