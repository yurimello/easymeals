class AddCategoryToReceipes < ActiveRecord::Migration
  def change
    add_reference :receipes, :category, index: true
    add_foreign_key :receipes, :categories
  end
end
