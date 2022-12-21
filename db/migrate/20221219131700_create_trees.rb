class CreateTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :fruit_type
      t.integer :price_per_year
      t.integer :quantity_per_year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
