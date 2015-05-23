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
#

require 'rails_helper'

RSpec.describe IngredientInstruction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
