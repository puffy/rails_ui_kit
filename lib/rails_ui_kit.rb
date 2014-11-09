if Gem::Specification.find_all_by_name('ffaker').any?
  require 'ffaker' unless defined?(Faker)
else
  require 'faker' unless defined?(Faker)
end

module RailsUiKit
  class Engine < Rails::Engine
  end
end
