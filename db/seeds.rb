# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




begin
	20.times do
		User.create(email: Faker::Internet.email ,password: "123456",username: Faker::Name.name)
	end	
	puts "User created"
rescue Exception => e
	puts "User creation error"
end


begin
	100.times do
		Question.create(title: Faker::Name.name, description: Faker::Company.bs, tags: Faker::IDNumber.valid, user_id: rand(1..20))
	end
	puts "Question seed created"
rescue Exception => e
	puts "Question seed creation error"
end


begin
	100.times do
		Answer.create(content: Faker::Name.name, tag: Faker::IDNumber.valid, user_id: 1, question_id: rand(1..100))
	end
	puts "Answer seed created"
rescue Exception => e
	puts "Answer seed creation error"
	
end