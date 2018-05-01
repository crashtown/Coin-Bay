class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.references :category, foreign_key: true
      t.float :price
      t.references :shipping, foreign_key: true
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
