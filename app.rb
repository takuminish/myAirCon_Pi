require 'sinatra'
require 'dotenv'

Dotenv.load

get '/room' do

  response = {
    code: "room"
  }

  response.to_json

end

get '/aircon' do

  response = {
    code: "aircon"
  }

  response.to_json

end

get '/cool' do

  response = {
    code: "cool"
  }

  response.to_json

end

get '/hot' do

  response = {
    code: "hot"
  }

  response.to_json

end

get '/off' do

  response = {
    code: "off"
  }

  response.to_json

end

get '/up' do

  response = {
    code: "up"
  }

  response.to_json

end

get '/down' do

  response = {
    code: "down"
  }

  response.to_json

end
