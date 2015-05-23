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
  click_link("add step")
  all(".receipe_steps_position > input").last.set "1"
  all(".receipe_steps_how_to > textarea").last.set "take at warm water"

  click_link("add step")
  all(".receipe_steps_position > input").last.set "2"
  all(".receipe_steps_how_to > textarea").last.set "let cooking for 5 minuts"
end

When(/^add (\w+) ingredient with (\d+) (\w+)( and )?(.*)$/) do |ingredient, quantity, metering, conjection, how|
  pending # express the regexp above with the code you wish you had
end


Then(/^must to have (\d+) ingredients created$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^must have these ingredients instructions:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^The receipe must be created with:$/) do |table|
  ingredients = table.hashes.map {|i| i[:name]}
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end
