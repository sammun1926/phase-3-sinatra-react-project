class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :subject_name
      # Add more attributes as needed
      t.timestamps null: false
    end
  end
end
