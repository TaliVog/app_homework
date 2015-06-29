class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :name
      t.date :date
      t.integer :price
      t.string :store
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
