require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User presence validations' do
    it 'Fullname should be present' do
      u = User.new(fullname: '', gender: 'male', email: 'johndoe@mail.com', password: 'password',age: 2)
      expect(u.valid?).to eq(false)
    end
    it 'Gender should be present' do
      u = User.new(fullname: 'John Doe', gender: '', email: 'johndoe@mail.com', password: 'password',age: 2)
      expect(u.valid?).to eq(false)
    end

    it 'Passoword should be present' do
      u = User.new(fullname: 'John Doe', gender: 'male', email: 'johndoe@mail.com',age: 2)
      expect(u.valid?).to eq(false)
    end
    it 'Email should be present' do
      u = User.new(fullname: 'John Doe', gender: 'male', password: 'password',age: 2)
      expect(u.valid?).to eq(false)
    end
    it 'Age should be present' do
      u = User.new(fullname: 'John Doe', gender: 'male', email: 'johndoe@mail.com', password: 'password' )
      expect(u.valid?).to eq(false)
    end
    it 'Email should be unique' do
      User.create(fullname: 'John Doe', gender: 'male', email: 'johndoe@mail.com', password: 'password',age: 2)
      b = User.new(fullname: 'John Doe', gender: 'male', email: 'johndoe@mail.com', password: 'password',age: 2)
      expect(b.valid?).to eq(false)
    end
  end
end
