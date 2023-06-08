require 'faker'

# Generate 10 students
10.times do
  student = Student.new(
    name: Faker::Name.name,
    grade_level: Faker::Number.between(from: 1, to: 12),
    class_name: Faker::Educator.subject
  )
  student.save!

  # Generate grades for the student
  5.times do
    subject = Subject.create(name: Faker::Educator.subject)
    student.grades.create(value: Faker::Number.between(from: 1, to: 100), subject: subject)
  end
end
