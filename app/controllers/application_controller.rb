class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    { message: "Welcome!" }.to_json
  end

  # Get all students
  get "/students" do
    students = Student.all
    students.to_json(include: :grades)
  end

  # Create a new student
  post "/students" do
    student = Student.create(
      name: params[:name],
      grade_level: params[:grade_level],
      class_name: params[:class_name]
    )

    if student.save
      student.to_json
    else
      { error: 'Failed to create student' }.to_json
    end
  end

  # Get a specific student by ID
  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json(include: :grades)
  end

  # Update a student
  patch "/students/:id" do
    student = Student.find(params[:id])
    if student.update(
        name: params[:name],
        grade_level: params[:grade_level],
        class_name: params[:class_name]
      )
      student.to_json
    else
      { error: 'Failed to update student' }.to_json
    end
  end

  # Delete a student
  delete "/students/:id" do
    student = Student.find(params[:id])
    if student.destroy
      { message: 'Student deleted successfully' }.to_json
    else
      { error: 'Failed to delete student' }.to_json
    end
  end

  # Create a new grade for a student
  post "/grades" do
    grade = Grade.create(
      value: params[:value],
      subject_id: params[:subject_id],
      student_id: params[:student_id]
    )

    if grade.save
      grade.to_json
    else
      { error: 'Failed to create grade' }.to_json
    end
  end

  # Get all grades
  get "/grades" do
    grades = Grade.all
    grades.to_json
  end

  # Get a specific grade by ID
  get "/grades/:id" do
    grade = Grade.find(params[:id])
    grade.to_json
  end

  # Update a grade
  patch "/grades/:id" do
    grade = Grade.find(params[:id])
    if grade.update(
        value: params[:value],
        subject_id: params[:subject_id],
        student_id: params[:student_id]
      )
      grade.to_json
    else
      { error: 'Failed to update grade' }.to_json
    end
  end

  # Delete a grade
  delete "/grades/:id" do
    grade = Grade.find(params[:id])
    if grade.destroy
      { message: 'Grade deleted successfully' }.to_json
    else
      { error: 'Failed to delete grade' }.to_json
    end
  end

end
