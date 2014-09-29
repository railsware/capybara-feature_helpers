# Capybara feature helpers

Set of handy capybara feature helpers used by Railsware:

* `within_maybe`
* `should_see_text`
* `should_not_see_text`
* `should_see_element`
* `should_not_see_element`

## Requirements

* capybara 2.x
* rspec 3.x

## Installation

Add to your application's `Gemfile`:

```ruby
group :test do
  gem 'capybara-feature_helpers'
end
```

Add to `spec/spec_helper.rb`
```ruby
require 'capybara/feature_helpers'
```

## Authors

* [Andriy Yanko](http://ayanko.github.io/)
