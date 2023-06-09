class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true
      # Add any other columns relevant to an enrollment
      
      t.timestamps
    end
  end
end
