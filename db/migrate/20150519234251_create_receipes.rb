class CreateReceipes < ActiveRecord::Migration
  def change
    create_table :receipes do |t|
      t.string :name
      t.integer :level
      t.integer :time_to_do
      t.text :obs
      t.timestamps null: false
    end
  end
end
