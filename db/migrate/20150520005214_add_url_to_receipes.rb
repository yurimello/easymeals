class AddUrlToReceipes < ActiveRecord::Migration
  def change
    add_column :receipes, :url, :string
  end
end
