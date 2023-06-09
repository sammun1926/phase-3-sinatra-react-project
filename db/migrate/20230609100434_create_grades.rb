class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true
      t.string :grade_value
      # Add any other columns relevant to a grade
      
      t.timestamps
    end
  end
end
