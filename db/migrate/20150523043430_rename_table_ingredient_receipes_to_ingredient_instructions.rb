class RenameTableIngredientReceipesToIngredientInstructions < ActiveRecord::Migration
  def change
    rename_table :ingredient_receipes, :ingredient_instructions
  end
end
