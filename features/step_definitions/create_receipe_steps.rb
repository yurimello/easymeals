Given(/^coocker visit new receipe page$/) do
  visit new_admin_receipe_path
end

Given(/^(\w+) ingredient was created$/) do |ingredient|
  Ingrediente.create!(name: ingredient)
end

When(/^insert receipe infos$/) do
  fill_in "receipe_name", with: "macarrao"
end

When(/^add steps$/) do
  # all(".receipe_steps_position > input").last.set "1"
  all(".receipe_steps_description > input").first.set "leave in the warm water"

  # all(".receipe_steps_position > input").last.set "2"
  all(".receipe_steps_description > input").last.set "let cooking for 5 minutes"
end

When(/^add (\w+) (\w+) ingredient with (\d+) (\w+)( and )?(.*)$/) do |order, ingredient, quantity, metering, conjection, how|
  all(".receipe_ingredient_instructions_name > input").send(order).set ingredient
  all(".receipe_ingredient_instructions_quantity > input").send(order).set quantity
  all(".receipe_ingredient_instructions_metering > input").send(order).set metering
  all(".receipe_ingredient_instructions_how > input").send(order).set how

end

When(/^submit form$/) do
  click_button "Create Receipe"
end

# Then(/^The receipe must be created with:$/) do |table|
#   ingredients = table.hashes.map {|i| i[:name].parameterize}
#   receipe = Receipe.last
#   ingredient_names = receipe.ingredients.map(&:name)
#   ingredients.each do |ingredient|
#     expect(ingredient_names.include?(ingredient)).to eq(true)
#   end
# end

# Then(/^must to have (\d+) ingredients created$/) do |ingredient_count|
#   expect(Ingredient.count).to eq(2)
# end

Then(/^visit receipe page$/) do
  visit admin_receipe_path(Receipe.last)
end


Then(/^must have these ingredients instructions:$/) do |table|
  instructions = table.hashes.map {|i| i[:instruction]}
  instructions.each do |instruction|
    expect(page).to have_text(instruction)
  end
  # expect(page).to have()
  # table is a Cucumber::Ast::Table
end

