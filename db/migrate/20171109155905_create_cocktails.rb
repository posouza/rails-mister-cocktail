class CreateCocktails < ActiveRecord::Migration[5.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
