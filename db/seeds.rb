require 'faker'

pictures = [
 "https://lh3.googleusercontent.com/pw/ACtC-3dcIUJsqqTAVFIAoAoYFGkvkPyt30b850nrRhAyETL4wGnbliksaaV9rzKF0EH3TwguWbFoEAD7WO0DVUARZGrhCpHhOH63yKKksT0wnGGeHTuM0dG0iYJ059layX8hlk1cNeORLOCNcsAX1aCqcx8r=w528-h768-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3clmeM7Tjctec_PVehcQuqPcocn3CPGLn-m6NKiZqXTIoJMTtYUj3k3qhw_JntXNbXBR08Z5BSQ5RmkZkgL6jkKtaaq6KUJmzAfyiUKPDPxFSUx5GiEgNMPu-q8sLKFMhKjWxoLYr_8i6NmTh8E-eNs=w542-h634-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3fgmZgFhtmidh_679R5RaS4ZpXRc-R91ImTET6gOqrwBrPVaXkAuCe--LlFvgbAVctnDZ-z3fznC-dz0XM46F1AcQ-sB6X-TPrgNu15p_Jpwk9chQspYm46pYO3kVDs9m63gbukl0vReNkW2crYGXn9=w542-h634-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3eN8o3v6k8FutD5O-tYsXYobq0-7gVOqBfMROKx5Hz6q7DkbghClDj5lCff3_0m3al9lh-KI46KOJOdlt8epr3B16cUcOZzxjmj1kzsSV0YCzHJAELhu1sbqcQcX4ymgBpsUSP_x_SyeqOmbpWhMEg4=w542-h634-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3ew6lFcD-P_7Lrjl9ydSP2bo4Bfg1R6rTAGJ2zBV3XFL9S_Vj9a4FEKU3seCiEJQ1AjHpmKVvBO_bjtrW3NHWBFbfJNbVeIl_3n_jG1RFXbKDCtY3NRKxqWu-qxznskfT4KnKoPROCf2MSS4WEIMjI-=w542-h660-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3ekf77HsRS56UNB0G9MBQlF5r0sy1l-RSHo2Qmpnksr0MgF4LyEZEe6LS0nMc1F6_Apk8qKCoVVUx_QLIAGDEyWgkUpglBkNPeljXSeIPq8hXSTu7Q6yPfxS9wEMeWH-RXYJfQUazLMV1CGvba9Fhm5=w542-h694-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3eKBfyPBxMaVG23pWu7zpropnIbIqbt738Z6lKhjCuP2nGDbUVcYWWMytYKjfdC6LwjnQ13tR0DDvL5zADgtpdX_TlI4eWxR9yzRCe_3Nm9F7spBFhxbgoBug4pOyYqUcbohaz6CTuRNLFFyczpTY47=w662-h694-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3cD2YVAHlytGcSfkREpMoB06ZgT38jLkARYEAP61wHBPdOl4On4XxAzC4bD1ecJU1EtCaoAT8qmHgn3aHAu4PfusvFTIYsAtdAbGdKCbIXs-yynlSu0YuaHu0IxW3Y7o7BvJz3VMDLHdry9hgKJ4Bnd=w528-h694-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3cjlpqsG9kmEJplZHTgmAyGr0O4eP_VGCj1PasfFupaOz062fi9WJ84sMKBttvPz6Lwxybnc4TkKZ4S7dmIVLk3sQpOXZ19RzODeJS5bKtytiFOZpIC0pecrlSlwnfZdKL6yYIxttZPw1s5-0NRjY1m=w528-h694-no?authuser=0",
 "https://lh3.googleusercontent.com/pw/ACtC-3ebBXqL7ZFE3_LCBgnhlcNTl2HftuPsxblVHPX-oy2sBpVBLD0sm7LaBqXI-2LvkphyUZI2Fs6YPB-kgq2w8S6KCj0Th1Oabnd9dWJP9qjhlXV1A24ICVgv81fir9-Xxdv_gf0TmHqzGYGaFhyekuYn=w528-h694-no?authuser=0"




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
  "Dermatologist"
]

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
 
(types.length).times do |el|
  Doctor.create(
   name:Faker::Name.unique.name,
   title: types[el],
   img: pictures[el],
   room: el+1,
   recieving_hours: "#{8+el}",
   info: rand(tex)

  )
  end

puts "***" * 50 
puts "Doctors  created"

10.times do |el|
  Appointment.create(
 user: User.find((1...types.length).to_a.sample()),
 doctor: Doctor.find((1...types.length).to_a.sample()),
 date_time: Faker::Date.between_except(from: Time.now, to: 1.year.from_now, excepted: Date.today)
  )

  end



puts "***" * 50 
puts "Appointments  created"