# Easymeals

Overview
========

This is a concept proof project that indicates receipes and builds menus for users from their personal likes.

It uses an implementation of machine learning in ruby, called Predictor.

The recipes have ingredients placed in an matrix of objects which are analyzed their attributes and search similar receipes from it

In addition to building this learing database of user interactions and similarities between receipes, this system also builds the list of ingredients based on the week's recipes


Project Url: [http://easymeals.herokuapp.com](http://easymeals.herokuapp.com/admin/receipes "Easymeals")

Whats missing
-----------------------

* API - search, recommendation and ingredients list for user
* Implement Background to add receipes and ingredients into matrix
* Unit specs


Run on Mac OSX
-------------------------------

- `brew install redis`
- `git clone https://github.com/yurimello/easymeals.git`
- `cd easymeals`
- `bundle install`
- `rake db:create && rake db:migrate`
- `redis-server`
- `rails s `
