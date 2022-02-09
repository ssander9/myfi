# README

This app doesn't work yet, but I hope that one day it will. (\shrug)

If it ever does, remember, **you** were here before the glory days.

Oh, and the basic idea is financial planning, etc. bc tbh who couldn't use a little help with that.

### Steps for setting up new nested resource...
* [ ] Set up the routes with resources :name
* [ ] Generate a model with proper associations with rails g model [Name] parent:references
* [ ] Set up the association in the parent model
* [ ] Edit the migration to include necessary columns
* [ ] Add validations
* [ ] Run the migration with rails db:migrate
* [ ] Gen a controller with rails g [Names]
* [ ] Create CRUD features in the controller
* [ ] Set the before_actions to get parameters
* [ ] Create the views
* [ ] Test the links, etc.
