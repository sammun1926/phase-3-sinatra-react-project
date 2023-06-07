# app/models/student.rb

class Student < ActiveRecord::Base
    has_many :grades
  
    validates :name, presence: true
    validates :grade_level, presence: true
    validates :class_name, presence: true
  
    # Add any other validations or custom methods here
  end
  