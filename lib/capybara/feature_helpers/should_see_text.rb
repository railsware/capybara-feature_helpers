module Capybara
  module FeatureHelpers

    def should_see_text(text, selector = nil)
      within_maybe(selector) do
        expect(page).to have_text(text, normalize_ws: true)
      end
    end

    def should_not_see_text(text, selector = nil)
      within_maybe(selector) do
        expect(page).not_to have_text(text, normalize_ws: true)
      end
    end

  end
end
