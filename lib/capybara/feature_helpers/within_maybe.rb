module Capybara
  module FeatureHelpers

    def within_maybe(*args)
      if args.compact.empty?
        yield
      else
        within(*args) do
          yield
        end
      end
    end

  end
end
