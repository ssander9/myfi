class CreateScenarios < ActiveRecord::Migration[6.0]
  def change
    create_table :scenarios do |t|
      t.string :title
      t.string :description
      t.string :job
      t.string :goal
      t.string :budget
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
