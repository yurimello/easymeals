class AddCoverToReceipes < ActiveRecord::Migration
  def change
    add_column :receipes, :cover, :string
  end
end
