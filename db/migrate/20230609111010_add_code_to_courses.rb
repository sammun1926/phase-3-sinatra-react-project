# db/migrate/20230602000001_add_code_to_courses.rb

class AddCodeToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :code, :string
  end
end
