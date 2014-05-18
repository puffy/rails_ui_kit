# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_ui_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_ui_kit"
  spec.version       = RailsUiKit::VERSION
  spec.authors       = ["Pavel Belyakov"]
  spec.email         = ["me@puffy.name"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "TODO: write after publishing on github"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faker', '~> 1.2.0'
end
