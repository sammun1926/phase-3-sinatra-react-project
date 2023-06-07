# db/seeds.rb

# Create sample students
student1 = Student.create(name: "John Doe", grade_level: 10, class_name: "Mathematics")
student2 = Student.create(name: "Jane Smith", grade_level: 9, class_name: "Science")

# Create sample grades
grade1 = Grade.create(subject: "Mathematics", score: 90, student: student1)
grade2 = Grade.create(subject: "Science", score: 85, student: student1)
grade3 = Grade.create(subject: "Mathematics", score: 95, student: student2)
grade4 = Grade.create(subject: "Science", score: 92, student: student2)
