require 'sinatra/base'
require 'json'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/students' do
    @students = Student.all
    @students.to_json
  end
  
  post '/students' do
    # Create a new student
    # ...
    if @student.save
      status 201
      @student.to_json
    else
      status 400
      { error: 'Failed to create student' }.to_json
    end
  end
  
  # Rest of the code
  
  # ...
end
