class Grade < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  attribute :score, :integer # Add the 'score' attribute with integer data type
end
