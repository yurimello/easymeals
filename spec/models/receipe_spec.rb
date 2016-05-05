# == Schema Information
#
# Table name: receipes
#
#  id            :integer          not null, primary key
#  name          :string
#  level         :integer
#  time_to_do    :integer
#  obs           :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :integer
#  url           :string
#  author        :string
#  category_name :string
#  cover         :string
#

require 'rails_helper'

RSpec.describe Receipe, type: :model do
  context 'create one receipe' do
    let(:pasta) { create(:meat_pasta) }
    it 'creates a receipe with ingredient instructions' do
      expect(pasta.ingredient_instructions.count).to eq(7)
    end

    it 'creates a receipe with ingredients' do
      expect(pasta.ingredients.count).to eq(7)
    end
  end

  context 'creates more than one receipe' do
    let!(:meat_pasta) { create(:meat_pasta) }
    let(:garlic_pasta) { create(:garlic_pasta) }

    it 'creates new ingredient instructions' do
      expect { garlic_pasta }.to change { IngredientInstruction.count }.by(4)
    end

    it 'does not create new ingredient when found' do
      expect { garlic_pasta }.to change { Ingredient.count }.by(0)
    end
  end

  describe '#similars' do
    let!(:meat_pasta) { create(:meat_pasta) }
    let!(:garlic_pasta) { create(:garlic_pasta) }
    let!(:meat_loaf) { create(:meat_loaf) }
    let!(:roast_beef) { create(:roast_beef) }

    xit 'pastas are quite similar' do
      pending 'have to mock redis'
    end
  end
end
