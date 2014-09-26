module Capybara
  module FeatureHelpers

    alias_method :should_see, :should_see_text
    alias_method :should_not_see, :should_not_see_text

  end
end
