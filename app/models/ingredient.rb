# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  has_many :ingredient_instructions, dependent: :destroy

  def human_name
    name.gsub("-", " ")
  end
end
