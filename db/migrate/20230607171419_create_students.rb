class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :grade_level
      t.string :class_name
      t.timestamps
    end
  end
end
