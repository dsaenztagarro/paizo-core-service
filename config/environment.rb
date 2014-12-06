if development?
  require 'sinatra/reloader'
  require 'pry'
end

Dir['initializers/**/*.rb'].each { |f| require f }
