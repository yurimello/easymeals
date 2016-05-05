FactoryGirl.define do
  factory :receipe do
    factory :meat_pasta do
      name "Meat Pasta"
      category_name "Pasta"
      
      after(:create) do |receipe, evaluator|
        receipe.ingredient_instructions << create(:primary_ingredient_instruction, name: 'Pasta', quantity: '1 pacote')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Meat', quantity: '1 kilo')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Tomato Sauce', quantity: '1 pacote')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Chilli', quantity: '1 unidade')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Garlic', quantity: '3 dentes')
        receipe.ingredient_instructions << create(:common_ingredient_instruction, name: 'Water', quantity: '1 copo')
        receipe.ingredient_instructions << create(:common_ingredient_instruction, name: 'Salt', quantity: '1 pitada')
      end
    end

    factory :garlic_pasta do
      name "Garlic Pasta"
      category_name "Pasta"
      
      after(:create) do |receipe, evaluator|
        receipe.ingredient_instructions << create(:primary_ingredient_instruction, name: 'Pasta', quantity: '1 pacote')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Garlic', quantity: '3 dentes')
        receipe.ingredient_instructions << create(:common_ingredient_instruction, name: 'Water', quantity: '1 copo')
        receipe.ingredient_instructions << create(:common_ingredient_instruction, name: 'Salt', quantity: '1 pitada')
      end
    end

    factory :meat_loaf do
      name "Meat Loaf"
      category_name "Meat"
      
      after(:create) do |receipe, evaluator|
        receipe.ingredient_instructions << create(:primary_ingredient_instruction, name: 'Meat', quantity: '1 kilo')
        receipe.ingredient_instructions << create(:primary_ingredient_instruction, name: 'Loaf', quantity: '1 unidade')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Tomato Sauce', quantity: '1 pacote')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Garlic', quantity: '3 dentes')
        receipe.ingredient_instructions << create(:common_ingredient_instruction, name: 'Salt', quantity: '1 pitada')
      end
    end

    factory :roast_beef do
      name "Roast Beef"
      category_name "Meat"
      
      after(:create) do |receipe, evaluator|
        receipe.ingredient_instructions << create(:primary_ingredient_instruction, name: 'Meat', quantity: '1 kilo')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Tomato Sauce', quantity: '1 pacote')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Chilli', quantity: '1 unidade')
        receipe.ingredient_instructions << create(:secondary_ingredient_instruction, name: 'Garlic', quantity: '3 dentes')
        receipe.ingredient_instructions << create(:common_ingredient_instruction, name: 'Water', quantity: '1 copo')
        receipe.ingredient_instructions << create(:common_ingredient_instruction, name: 'Salt', quantity: '1 pitada')
      end
    end
  end
end