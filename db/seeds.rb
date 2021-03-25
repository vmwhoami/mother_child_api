require 'faker'

pictures = [
"https://w7.pngwing.com/pngs/58/565/png-transparent-physician-medicine-medical-diagnosis-health-care-online-doctor-doctor-service-people-medical-diagnosis.png",
"https://xn--80apfedmab8e4d.xn--p1ai/wp-content/uploads/2017/08/doctor-writing.png",
"https://w7.pngwing.com/pngs/753/484/png-transparent-physician-doctor-of-medicine-clinic-pharmacy-others-miscellaneous-service-nutrition.png",
"https://w7.pngwing.com/pngs/497/547/png-transparent-lewermark-international-student-health-insurance-physician-otorhinolaryngology-doctor-service-medical-desktop-wallpaper.png",
"https://yt3.ggpht.com/a/AATXAJwrdK-HMWZe3KdP8T5-hiLVKAzcPbwSbxRt_cuQ=s900-c-k-c0xffffffff-no-rj-mo",
"https://w7.pngwing.com/pngs/25/402/png-transparent-male-doctor-hospital-medical-real-doctors.png",
"https://w7.pngwing.com/pngs/740/389/png-transparent-physician-dentist-clinic-doctor-of-medicine-others-service-medical-medicine.png",
"https://w7.pngwing.com/pngs/74/366/png-transparent-women-s-blue-coat-nursing-college-licensed-practical-nurse-registered-nurse-job-doctor-miscellaneous-blue-service.png",
"https://w7.pngwing.com/pngs/739/813/png-transparent-woman-wearing-white-lab-coat-sildenafil-medicine-health-care-pharmaceutical-drug-physician-pharmacist-hospital-pharmacy-service-pharmaceutical-drug-medicine.png",
"https://w7.pngwing.com/pngs/713/266/png-transparent-physician-medicine-health-care-nursing-care-others-service-medical-woman.png",
"https://w7.pngwing.com/pngs/221/542/png-transparent-medicine-physician-assistant-stethoscope-nurse-practitioner-woman-medicine-physician-assistant-stethoscope.png",
"https://w7.pngwing.com/pngs/98/590/png-transparent-physician-doctor-of-medicine-patient-health-care-doctor-electronics-microphone-service.png",
"https://w7.pngwing.com/pngs/904/102/png-transparent-medicine-physician-riverside-medical-center-dentist-health-care-others-service-dentistry-clipboard.png"


]

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
  "Dermatologist"
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
   img: pictures[el]
  )
  end

puts "***" * 50 
puts "Doctors  created"

10.times do |el|
  Appointment.create(
 user: User.find((1...types.length).to_a.sample()),
 doctor: Doctor.find((1...types.length).to_a.sample()),
 room:  (10...200).to_a.sample().to_s,
 date_time: Faker::Date.between_except(from: Time.now, to: 1.year.from_now, excepted: Date.today)
  )

  end



puts "***" * 50 
puts "Appointments  created"