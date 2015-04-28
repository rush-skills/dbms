class CreateCourseOfferings < ActiveRecord::Migration
  def change
    create_table :course_offerings do |t|
      t.references :course, index: true
      t.integer :section_number
      t.string :year
      t.string :semester

      t.timestamps
    end
  end
end
