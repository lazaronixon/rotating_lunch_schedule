class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date :served_at, null: false
      t.references :meal, null: false, foreign_key: false

      t.timestamps
    end
  end
end
