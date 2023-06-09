# db/seeds.rb

require 'faker'

# Create 10 students
10.times do
  Student.create(
    name: Faker::Name.name,
    student_id: Faker::Number.unique.number(digits: 6)
  )
end

# Create 5 courses
5.times do
  Course.create(
    name: Faker::Educator.course_name,
    code: Faker::Lorem.unique.characters(number: 6).upcase
  )
end

# Associate students with courses
Student.all.each do |student|
  rand(1..3).times do
    course = Course.all.sample
    student.courses << course
    Enrollment.create(student: student, course: course)
  end
end

# Generate random grades for students in courses
Student.all.each do |student|
  student.courses.each do |course|
    Grade.create(
      student: student,
      course: course,
      score: rand(50..100)
    )
  end
end
