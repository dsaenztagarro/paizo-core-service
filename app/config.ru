require File.join(File.dirname(__FILE__), '..', 'config', 'boot')

map(api_url 'event_types') { run EventTypesController }

run Rack::Cascade.new [API::Monsters, Web]

