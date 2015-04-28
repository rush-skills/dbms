class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.time :start
      t.time :end
      t.string :day

      t.timestamps
    end
  end
end
