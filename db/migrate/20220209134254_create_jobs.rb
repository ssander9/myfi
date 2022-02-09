class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :state
      t.integer :salary
      t.integer :bonus
      t.decimal :salary_pct
      t.decimal :bonus_pct
      t.decimal :emp_spon_pct
      t.decimal :emp_match_pct
      t.integer :health_pmt
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
