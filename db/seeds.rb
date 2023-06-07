# db/seeds.rb
require 'faker'

# Generate sample data using Faker gem
10.times do
  subject = Faker::Educator.subject
  grade = Faker::Number.between(from: 60, to: 100)
  student_name = Faker::Name.name

  student = Student.create(name: student_name, grade_level: "10th Grade", class_name: "Mathematics")
  Grade.create(subject: subject, score: grade, student: student)
end
