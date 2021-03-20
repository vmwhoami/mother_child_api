
names = [
"Olga Pirvu",
"Galina Melnic",
"Filip Melnic",
"Adam Melnic",
"Sergiu Bogdan",
"Inna Bogdan"
]
genders = ["male","female"]
emails = ["vitalimelnic@yahoo.com",
"vmwhoami@gmail.com","inna@mail.ru",
"serboss@yahoo.com","adammelnic@gmail.com"
]

10.times do |el|
User.create(
 email: emails.sample(),
 fullname: names.sample(),
 gender: genders.sample(),
 password: "password",

)
end

puts "***" * 50 
puts "Users created"