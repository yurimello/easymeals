class AddNameToIngredientInstructions < ActiveRecord::Migration
  def change
    add_column :ingredient_instructions, :name, :string
  end
end
