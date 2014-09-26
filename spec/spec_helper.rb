require 'capybara/rspec'
require 'capybara/feature_helpers'

require_relative 'support/test_app'

Capybara.app = TestApp

RSpec.configure do |config|
  config.before(:each) do
    visit '/'
  end
end
