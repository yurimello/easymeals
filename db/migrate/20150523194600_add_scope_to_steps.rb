class AddScopeToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :scope, :string
  end
end
