class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :desc
      t.references :muscle_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
