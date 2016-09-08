require 'sinatra'
require 'json'

jsontest = "none"

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  jsontest = "got some!"
end

get '/payload' do
  jsontest
end
