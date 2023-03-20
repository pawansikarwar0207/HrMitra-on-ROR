# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


student = Student.create(
	first_name: 'Ram',
	middle_name: 'Singh',
	last_name: 'Chouhan',
	personal_email: 'ram_singh@bootcamp.com',
	contact_number: '1234567890',
	address_line_1: '123',
	address_line_2: 'Indore',
	city: 'Indore',
	state: 'M.P.',
	country: 'India',
	zipcode: '452001'
)

20.times do |i|
	puts "Creating Student #{i+1}"
		Student.create(
		first_name: "Student#{i+1}",
		middle_name: "Mname#{i+1}",
		last_name: "Lname#{i+1}",
		personal_email: "students#{i+1}@bootcamp.com"
)
end


trainee = Trainee.create(
	name: 'trainee1',
	email: 'trainee1@example.com',
	address: 'Indore',
	contact_number: '0123456789',
	college_name: 'XYZ',
	course_name: 'ABC'
)