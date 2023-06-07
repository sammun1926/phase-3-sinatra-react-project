# app/models/subject.rb

class Subject < ActiveRecord::Base
    has_many :grades
  
    validates :name, presence: true
  
    # Add any other validations or custom methods here
  end
  