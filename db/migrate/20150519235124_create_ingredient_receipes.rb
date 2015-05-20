class CreateIngredientReceipes < ActiveRecord::Migration
  def change
    create_table :ingredient_receipes do |t|
      t.references :ingredient, index: true
      t.references :receipe, index: true
      t.string :quantity
      t.string :how
      t.string :metering

      t.timestamps null: false
    end
    add_foreign_key :ingredient_receipes, :ingredients
    add_foreign_key :ingredient_receipes, :receipes
  end
end
