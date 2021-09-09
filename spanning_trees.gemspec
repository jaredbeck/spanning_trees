# frozen_string_literal: true

require_relative "lib/spanning_trees/gem_version"

Gem::Specification.new do |spec|
  spec.name = "spanning_trees"
  spec.version = SpanningTrees.gem_version.to_s
  spec.license = "Hippocratic-2.1"
  spec.authors = ["Jared Beck"]
  spec.email = ["jared@jaredbeck.com"]
  spec.summary = "Algorithms for finding spanning trees in graphs."
  spec.homepage = "https://github.com/jaredbeck/spanning_trees"
  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/jaredbeck/spanning_trees/blob/master/CHANGELOG.md"
  spec.files = Dir["lib/**/*", "LICENSE.txt"].reject { |f| File.directory?(f) }
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.0.2"

  spec.add_runtime_dependency "rgl", "~> 0.5.7"

  spec.add_development_dependency "byebug", "~> 11.1"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "rubocop", "~> 1.20"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.1"
  spec.add_development_dependency "rubocop-performance", "~> 1.11"
  spec.add_development_dependency "rubocop-rspec", "~> 2.4"
  spec.add_development_dependency "sorbet-runtime", "~> 0.5.9112"
end
