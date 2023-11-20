class CreateTrainings < ActiveRecord::Migration[7.1]
  def change
    create_table :trainings do |t|
      t.integer :format
      t.integer :state
      t.references :primary_group, null: false, foreign_key: { to_table: :muscle_groups }
      t.references :support_group, null: false, foreign_key: { to_table: :muscle_groups }
      t.references :user, null: false, foreign_key: true
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
