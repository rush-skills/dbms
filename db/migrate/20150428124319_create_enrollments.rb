class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :grade
      t.references :student, index: true
      t.references :course_offering, index: true

      t.timestamps
    end
  end
end
