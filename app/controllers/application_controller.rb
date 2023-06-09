require 'json'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # GET /students
  get '/students' do
    students = Student.all
    students.to_json
  end

  get '/students/:id' do
    students = Student.find(params[:id])
    students.to_json
  end


  # POST /students
  post '/students' do
    student = Student.create(
      name: params[:name],
      student_id: params[:student_id],
      grade: params[:grade],
      
    )

    if student
      status 201
      student.to_json
    else
      status 400
      { error: 'Failed to create student' }.to_json
    end
  end

  # PUT /students/:id
  put '/students/:id' do
    student = Student.find(params[:id])

    if student
      student.update(
        name: params[:name],
        grade: params[ :grade],
        
        
      )

      # Optionally, you can return the updated student as JSON
      student.to_json
    else
      status 404
      'Student not found'
    end
  end

  # DELETE /students/:id
  delete '/students/:id' do
    student = Student.find(params[:id])

    if student.destroy
      status 204
    else
      status 500
    end
  end
end
