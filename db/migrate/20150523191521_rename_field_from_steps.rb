class RenameFieldFromSteps < ActiveRecord::Migration
  def change
    rename_column :steps, :name, :description
  end
end
