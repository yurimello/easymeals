FactoryGirl.define do
  factory :ingredient_instruction do
    factory :primary_ingredient_instruction do
      weight IngredientInstruction::WEIGHTS["Primary"]
    end

    factory :secondary_ingredient_instruction do
      weight IngredientInstruction::WEIGHTS["Secondary"]
    end

    factory :common_ingredient_instruction do
      weight IngredientInstruction::WEIGHTS["Common"]
    end
  end
end