require 'grape'
require 'grape-swagger'
require 'pry'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/reloader'

# Rabl config
require 'active_support/core_ext'
require 'active_support/inflector'
require 'builder'
require 'rabl'
Rabl.register!

%w(models views api/v1 api/root).each do |folder|
  Dir.glob("app/#{folder}/**/*.rb").each do |path|
    require_relative "../#{path}"
  end
end
