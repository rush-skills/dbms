class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :program
      t.string :student_id

      t.timestamps
    end
  end
end
