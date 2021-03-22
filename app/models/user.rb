class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 6, maximum: 50 }
  validates :fullname, presence: true, length: { minimum: 4, maximum: 50 }
  validates :gender, presence: true
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }
  validates_presence_of :age, on: :create, message: "Age can't be blank"
end
