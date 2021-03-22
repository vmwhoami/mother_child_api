require 'faker'

genders = ["male","female"]
types = [
  "Podiatrist",
  "General Practitioner",
  "Pediatrician",
  "Endocrinologist",
  "Neurologist",
  "Rheumatologist",
  "Allergist/Immunologist",
  "Psychiatrist",
  "Nephrologist",
  "OB/GYN",
  "Pulmonologist",
  "Surgeon",
  "Ophthalmologist",
  "Urologist",
  "Dermatologist",
  "Gastroenterologist",
  "Orthopedist"
]

10.times do |el|
User.create(
 email: Faker::Internet.email,
 fullname: Faker::Name.name,
 gender:genders.sample(),
 password: "password",
 age: el.abs()%5
)
end

puts "***" * 50 
puts "Users created"

 
(types.length).times do |el|
  Doctor.create(
   name:Faker::Name.unique.name,
   title: types[el],
   gender:genders.sample(),
  )
  end

puts "***" * 50 
puts "Doctors  created"

10.times do |el|
  Appointment.create(
 user: User.find((1...10).to_a.sample()),
 doctor: Doctor.find((1...15).to_a.sample()),
 room:  (10...200).to_a.sample().to_s,
 date_time: Faker::Date.between_except(from: Time.now, to: 1.year.from_now, excepted: Date.today)
  )

  end



puts "***" * 50 
puts "Appointments  created"