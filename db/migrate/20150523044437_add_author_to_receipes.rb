class AddAuthorToReceipes < ActiveRecord::Migration
  def change
    add_column :receipes, :author, :string
  end
end
