class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :title
      t.references :department, index: true
      t.integer :identification_number

      t.timestamps
    end
  end
end
