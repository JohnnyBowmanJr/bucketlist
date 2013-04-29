ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'shoulda'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation


class ActiveSupport::TestCase
	setup do	
		DatabaseCleaner.start
	end

	teardown do
		# then, whenever you need to clean the DB
		DatabaseCleaner.clean
	end
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
