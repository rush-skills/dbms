class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :building
      t.string :name

      t.timestamps
    end
  end
end
