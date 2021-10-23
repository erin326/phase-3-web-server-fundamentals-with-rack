require 'rack'
require 'rack/test'

def app
  Rack::Builder.parse_file('server/config.ru').first
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.order = 'default'
end
