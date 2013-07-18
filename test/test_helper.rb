ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  # fixtures :all

  # Add more helper methods to be used by all tests here


end

class ActionDispatch::IntegrationTest
  include Capybara::DSL

  Capybara.app = Crowdfunder::Application

  teardown do
    Capybara.reset_sessions! # forget the simulated browser state
    Capybara.use_default_driver # revert Capybara.current_driver to Capybara.default_driver
  end
end