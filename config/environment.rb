# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Danjam::Application.initialize!

# Try to fix "songs" does not exist error on heroku
ActiveRecord::Base.pluralize_table_names = false