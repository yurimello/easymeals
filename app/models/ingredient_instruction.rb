# == Schema Information
#
# Table name: ingredient_instructions
#
#  id            :integer          not null, primary key
#  ingredient_id :integer
#  receipe_id    :integer
#  quantity      :string
#  how           :string
#  metering      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  name          :string
#  scope         :string
#

class IngredientInstruction < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :receipe

  before_save :set_numeric_quantity
  before_save :set_param_name
  before_save :set_ingredient

  validates :name, presence: true


  WEIGHTS = {
    "Comum" => 1,
    "Secundario" => 2,
    "Principal" => 3
  }


  def full_instruction
    "#{quantity} #{metering_description}#{preposition} #{name} #{how}"
  end

  def preposition
    unless metering.blank?
      " #{I18n.t(:of)}"
    end
  end

  def metering_description
    quantity.to_i > 1 ? metering.plural : metering
  end

  def to_numeric_quantity
    if quantity.match("/")
      q = quantity
      int = 0
      if quantity.match(/ e /)
        int = quantity.split("e")[0].strip.to_i
        float = quantity.split("e")[1].strip
        q = float
      end
      if quantity.match(/[0-9] [0-9]/)
        int = quantity.split(" ")[0].strip.to_i
        float = quantity.split(" ")[1].strip
        q = float
      end
      first = q.split("/")[0].to_f
      last = q.split("/")[1].to_f
      int + (first / last)
    else
      quantity.to_f
    end
  end

  def set_param_name
    self.param_name = name.parameterize if self.valid?
  end

  def set_numeric_quantity
    self.numeric_quantity = self.to_numeric_quantity if self.valid?
  end

  def set_ingredient
    if self.valid?
      self.ingredient = Ingredient.find_or_create_by(name: self.param_name)
    end
  end

end
