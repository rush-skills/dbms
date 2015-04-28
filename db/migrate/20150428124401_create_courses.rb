class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :credits
      t.text :syllabus

      t.timestamps
    end
  end
end
