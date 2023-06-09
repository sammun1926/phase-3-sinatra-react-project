class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_code
      # Add any other columns relevant to a course
      
      t.timestamps
    end
  end
end
