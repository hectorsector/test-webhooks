require 'sinatra'
require 'json'

jsontest = "none"

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  jsontest = "I got some JSON: #{push.inspect}"
end

get '/' do
  jsontest
end
