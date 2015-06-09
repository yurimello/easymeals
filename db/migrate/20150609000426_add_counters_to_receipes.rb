class AddCountersToReceipes < ActiveRecord::Migration
  def change
    add_column :receipes, :steps_count, :integer
    add_column :receipes, :ingredients_count, :integer
  end
end
