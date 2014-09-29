module Capybara
  module FeatureHelpers

    def should_see_element(selector, options = {})
      expect(page).to have_selector(selector, options)
    end

    def should_not_see_element(selector, options = {})
      expect(page).not_to have_selector(selector, options.merge(visible: true))
    end

  end
end
