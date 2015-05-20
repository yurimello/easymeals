# == Schema Information
#
# Table name: ingredient_receipes
#
#  id            :integer          not null, primary key
#  ingredient_id :integer
#  receipe_id    :integer
#  quantity      :string
#  how           :string
#  metering      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class IngredientReceipe < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :receipe

  delegate :name, to: :ingredient
end
