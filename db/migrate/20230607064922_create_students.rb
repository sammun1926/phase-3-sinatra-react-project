class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :Firstname
      t.string :Lastname
      t.integer :grade_level

      # Add more attributes as needed
      t.timestamps null: false
    end
  end
end
