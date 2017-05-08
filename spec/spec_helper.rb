require '../app.rb'
require 'rspec'
require 'rack/test'

set :environment, :teste

module RSepcMixin
  include Rack::Test::Methods

  def app
    App
  end
end

Rspec.configure do |c|
  c.include RSpecMixin
end
