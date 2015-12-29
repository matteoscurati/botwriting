ENV["RAILS_ENV"] ||= "test"
require "spec_helper"
require File.expand_path("../config/environment", File.dirname(__FILE__))
require "rspec/rails"
require "rspec-activemodel-mocks"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end
