require 'faker'

pictures = [
"https://pngimg.com/uploads/doctor/doctor_PNG16012.png",
"https://xn--80apfedmab8e4d.xn--p1ai/wp-content/uploads/2017/08/doctor-writing.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16011.png",
"https://pngimg.com/uploads/doctor/doctor_PNG15980.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16040.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16041.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16042.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16034.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16037.png",
"http://pngimg.com/uploads/doctor/doctor_PNG15985.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16030.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16031.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16022.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16019.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16018.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16022.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16017.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16014.png",
"https://pngimg.com/uploads/doctor/doctor_PNG15997.png",
"https://pngimg.com/uploads/doctor/doctor_PNG16006.png"

]
tex = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de 'Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', comes from a line in section 1.10.32."

genders = ["male","female"]
types = [
  "General Practitioner",
  "Pediatrician",
   "Neurologist",
  "Rheumatologist",
  "Allergist/Immunologist",
  "Psychiatrist",
  "Nephrologist", 
  "Surgeon",
  "Ophthalmologist",
  "Dermatologist",
  "Anesthesiologists",
  "Obstetrician ",
]
hours = ["9-12","12-14","9-11","11-13","14-16","12-16"]


10.times do |el|
User.create(
 email: Faker::Internet.email,
 fullname: Faker::Name.name,
 gender:genders.sample(),
 password: "password",
 age: el.abs()%5,
 
)
end

puts "***" * 50 
puts "Users created"

def rand(tex)
  len = tex.split(" ").length/2
  tex.split(" ").first(Random.rand(10...len)).join(" ")
end
 
(pictures.length).times do |el|
  Doctor.create(
   name:Faker::Name.unique.name,
   title: types[el],
   img: pictures[el],
   room: el+1,
   recieving_hours: "#{hours.sample()}",
   info: rand(tex)

  )
  end

puts "***" * 50 
puts "Doctors  created"

10.times do |el|
  Appointment.create(
 user: User.find((1...9).to_a.sample()),
 doctor: Doctor.find((1...types.length).to_a.sample()),
 date_time: Faker::Date.between_except(from: Time.now, to: 1.year.from_now, excepted: Date.today)
  )

  end



puts "***" * 50 
puts "Appointments  created"