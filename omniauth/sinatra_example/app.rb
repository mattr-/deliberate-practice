require 'sinatra'
require 'omniauth'
require 'omniauth-github'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :github, ENV['GH_KEY'], ENV['GH_SECRET']
end

get '/' do
  erb :index
end

get '/auth/failure' do
  "Sorry, couldn't log in"
end

#Add support for OmniAuth callbacks
%w(get post).each do |method|
  send(method, "/auth/:provider/callback") do
    env['omniauth.auth']
  end
end
