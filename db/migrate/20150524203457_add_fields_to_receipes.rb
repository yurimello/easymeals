class AddFieldsToReceipes < ActiveRecord::Migration
  def change
    add_column :receipes, :yield, :integer
    add_column :receipes, :menu_group, :string
  end
end
