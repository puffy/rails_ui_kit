# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_ui_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_ui_kit"
  spec.version       = RailsUiKit::VERSION
  spec.authors       = ["Pavel Belyakov"]
  spec.email         = ["me@puffy.name"]
  spec.summary       = %q{Helpful components for developing UI in Rails}
  spec.description   = %q{Helpful components for developing UI in Rails}
  spec.homepage      = "https://github.com/puffy/rails_ui_kit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faker', '~> 1.2.0'
end
