class AddScopeToIngredientInstructions < ActiveRecord::Migration
  def change
    add_column :ingredient_instructions, :scope, :string
  end
end
