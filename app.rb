require 'sinatra'
require 'dotenv'

def request_check 
  p  request.env["HTTP_X_REQUESTED_WITH"]
  p ENV["X"]
  if request.env["HTTP_X_REQUESTED_WITH"] == ENV["X"]
    return true
  else
    return false
  end

end



Dotenv.load

get '/room' do

  if request_check
    response = {
      code: "room"
    }

    response.to_json

  end
  
end

get '/aircon' do

  if request_check
    response = {
      code: "aircon"
    }

    response.to_json
  end
  
end

get '/cool' do

  if request_check
    response = {
      code: "cool"
    }

    system("sh aircon.sh cool")        
    response.to_json

  end

end

get '/hot' do

  if request_check
    response = {
      code: "hot"
    }

    system("sh aircon.sh hot")    
    response.to_json
  end
  
end

get '/off' do

  if request_check
    response = {
      code: "off"
    }
    system("sh aircon.sh off")    
    response.to_json
  end
  
end

get '/up' do

  if request_check
    response = {
      code: "up"
    }

    response.to_json
  end
 
end

get '/down' do

  if request_check
    response = {
      code: "down"
    }

    response.to_json
  end
 
end

                                                         
