require 'database_cleaner'
require 'json'
require 'rack/test'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |path| require path }

ENV['RACK_ENV'] = 'test'

# Load application code
require File.expand_path '../../application.rb', __FILE__

# Avoid log noise
ActiveRecord::Base.logger = nil unless ENV['LOG'] == true

# Rack test helpers
module RSpecMixin
  include Rack::Test::Methods

  def app
    API::V1::Root
  end

  def json_response
    JSON.parse(last_response.body)
  end
end

RSpec.configure do |config|
  config.order = 'random'
  config.color = true
  config.formatter = 'documentation'
  config.include RSpecMixin
end
