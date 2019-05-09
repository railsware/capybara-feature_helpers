module Capybara
  module FeatureHelpers

    def should_see_element(selector, options = {})
      expect(page).to have_selector(selector, options.merge(normalize_ws: true))
    end

    def should_not_see_element(selector, options = {})
      expect(page).not_to have_selector(selector, options.merge(normalize_ws: true, visible: true))
    end

  end
end
