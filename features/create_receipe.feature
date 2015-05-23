Feature: Create receipe
  In Order to not create same ingredient more than once
  As a coocker
  I want to create a new receipe

# @javascript
Scenario: Create new receipes
  Given coocker visit new receipe page
  # And tomato ingredient was created
  When insert receipe infos
  And add steps
  And add first tomato ingredient with 1 unity and without seeds
  And add last onion ingredient with 2 unity
  And submit form
  # Then The receipe must be created with:
  #   |name|
  #   |tomato|
  #   |onion|
  # And must to have 2 ingredients created
  Then visit receipe page
  And must have these ingredients instructions:
    |instructions|
    |1 unity tomato without seeds|
    |2 unity onion|
   

