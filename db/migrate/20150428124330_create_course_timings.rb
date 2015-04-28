class CreateCourseTimings < ActiveRecord::Migration
  def change
    create_table :course_timings do |t|
      t.references :timing, index: true
      t.references :course_offering, index: true
      t.references :classroom, index: true

      t.timestamps
    end
  end
end
