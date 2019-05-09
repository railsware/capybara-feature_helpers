# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capybara-feature_helpers"
  spec.version       = "0.0.1"
  spec.authors       = ["Andriy Yanko"]
  spec.email         = ["andriy.yanko@railsware.com"]
  spec.summary       = %q{Railsware capybara feature helpers}
  spec.homepage      = "https://github.com/railsware/capybara-feature_helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "capybara", "~> 3.5"
  spec.add_development_dependency "selenium-webdriver", "~> 3.0"
  spec.add_development_dependency "capybara-webkit", "~> 1.3"
  spec.add_development_dependency "poltergeist", "~> 1.5"
end
