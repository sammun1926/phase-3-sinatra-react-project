# app/models/grade.rb

class Grade < ActiveRecord::Base
    belongs_to :student
    belongs_to :subject
  
    validates :value, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to:100 }
    validates :student_id, presence: true
    validates :subject_id, presence: true
  
    # Add any other validations or custom methods here
  end
  