class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :student_id
      # Add any other columns relevant to a student
      
      t.timestamps
    end
  end
end
