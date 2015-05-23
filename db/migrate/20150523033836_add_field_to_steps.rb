class AddFieldToSteps < ActiveRecord::Migration
  def change
    remove_column :steps, :how_to, :text
    add_column :steps, :name, :string
  end
end
