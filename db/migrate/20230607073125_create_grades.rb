class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :subject_id
      t.float :value
      # Add more attributes as needed
      t.timestamps null: false
    end
  end
end
