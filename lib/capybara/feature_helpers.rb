require 'capybara/feature_helpers/within_maybe'
require 'capybara/feature_helpers/should_see_text'
require 'capybara/feature_helpers/should_see'
require 'capybara/feature_helpers/should_see_element'

require 'rspec/core'

RSpec.configure do |config|
  config.include Capybara::FeatureHelpers, type: :feature
end
