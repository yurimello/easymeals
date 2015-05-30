class AddFieldsToIngredientInstructions < ActiveRecord::Migration
  def change
    add_column :ingredient_instructions, :param_name, :string
    add_column :ingredient_instructions, :numeric_quantity, :float
  end
end
