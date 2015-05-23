class AddCategoryNameToReceipes < ActiveRecord::Migration
  def change
    add_column :receipes, :category_name, :string
  end
end
