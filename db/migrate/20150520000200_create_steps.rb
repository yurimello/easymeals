class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.text :how_to
      t.integer :position
      t.references :receipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :steps, :receipes
  end
end
