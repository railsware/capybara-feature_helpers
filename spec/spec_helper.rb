require 'capybara/rspec'
require 'capybara/feature_helpers'

require 'capybara/webkit'
require 'capybara/poltergeist'

require_relative 'support/test_app'
require_relative 'support/drivers'

Capybara.app = TestApp

RSpec.configure do |config|
  config.before(:each) do
    visit '/'
  end
end
