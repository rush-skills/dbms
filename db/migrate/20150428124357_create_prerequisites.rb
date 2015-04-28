class CreatePrerequisites < ActiveRecord::Migration
  def change
    create_table :prerequisites do |t|
      t.integer :prerequisite_id
      t.references :course, index: true

      t.timestamps
    end
  end
end
