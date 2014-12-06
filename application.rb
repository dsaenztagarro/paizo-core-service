require_relative 'config/boot'

# ActiveRecord::Base.instance_eval do
#   include ActiveModel::MassAssignmentSecurity
#   attr_accessible []
# end

# Application config
module Application
  include ActiveSupport::Configurable
end

Application.configure do |config|
  config.root = File.dirname(__FILE__)
end

ApplicationServer = Rack::Builder.new do
  # if ['production', 'staging'].include? Application.config.env
  #   use Rack::SslEnforcer
  # end

  # use Rack::Static, :urls => [
  #   '/css',
  #   '/images',
  #   '/lib',
  #   '/swagger-ui.js',
  #   '/create_card.html'
  # ], :root => 'public', index: 'index.html'

  # map '/javascripts' do
  #   run SprocketsApp
  # end

  map '/' do
    run API::V1::Root
  end
end
