# frozen_string_literal: true

require "byebug"
require "spanning_trees"

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.example_status_persistence_file_path = ".rspec_status"
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
