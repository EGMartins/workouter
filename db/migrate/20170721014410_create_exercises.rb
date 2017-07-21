class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :duration
      t.text :workout_details
      t.string :activity_date

      t.timestamps
    end
  end
end
