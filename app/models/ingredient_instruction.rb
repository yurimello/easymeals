# == Schema Information
#
# Table name: ingredient_instructions
#
#  id            :integer          not null, primary key
#  ingredient_id :integer
#  receipe_id    :integer
#  name          :string
#  quantity      :string
#  how           :string
#  metering      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class IngredientInstruction < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :receipe

  before_save :set_ingredient


  def full_instruction
    "#{quantity} #{metering} #{name} #{how}"
  end

  private
  def set_ingredient
    if self.valid?
      self.ingredient = Ingredient.find_or_create_by(name: self.name.parameterize)
    end
  end

end
