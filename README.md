# README

Project Title
ComputerBuilder - A rails app used to signup and login a user that allows a user to create orders and add computers to those orders.

Getting Started


Prerequisites
Github
Ruby 2.6.1
Rails 6.0.2.2


Installing
1. Check out the repository

git@github.com:Jmiller1294/ComputerBuilder.git

2. Install Gems

bundle install

3. migrate the database

rake db:migrate

4. Start the Rails server

You can start the rails server using the command given below:
rails s
And now you can visit the site with the URL http://localhost:3000


Built With
Rails - The web framework used

Contributing
Please read CONTRIBUTING.md for details on our code of conduct, and the process for submitting pull requests to us.

Versioning
For the versions available, see the tags on this repository.

Authors
Justin Miller - Initial work - Jmiller1294
See also the list of contributors who participated in this project.

License
This project is licensed under the MIT License - see the LICENSE.md file for details



# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup
- [x] Include login
- [x] Include logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate