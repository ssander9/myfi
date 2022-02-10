class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.string :title
      t.integer :tithing_net
      t.integer :rent
      t.integer :food
      t.integer :auto
      t.integer :insurance
      t.integer :child
      t.integer :childcare
      t.integer :entertainment
      t.integer :travel
      t.integer :clothing
      t.integer :personal_care
      t.integer :gifts
      t.integer :misc_home
      t.integer :other
      t.integer :savings
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
