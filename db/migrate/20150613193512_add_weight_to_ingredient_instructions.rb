class AddWeightToIngredientInstructions < ActiveRecord::Migration
  def change
    add_column :ingredient_instructions, :weight, :integer
  end
end
