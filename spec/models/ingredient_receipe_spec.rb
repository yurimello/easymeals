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

require 'rails_helper'

RSpec.describe IngredientReceipe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
