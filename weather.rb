require "sinatra"
require "yahoo_weatherman"

def get_weather(post)
client = Weatherman::Client.new
user_woeid = client.lookup_by_location(post)
user_woeid.condition["text"]
end

get '/' do
    erb :home
end

post '/weather' do
    post = params[:post]["location"]
    @weather = get_weather(post)
    "#{@weather}"
   
   if (@weather == "Sunny")
       erb:sunny
       elsif (@weather == "Fair")
       erb:sunny
       elsif (@weather == "Cloudy")
       erb:cloudy
       elsif (@weahter == "Mostly Cloudy")
       erb:cloudy
       elsif (@weather == "Partly Cloudy")
       erb:cloudy
       elsif (@weather == "Snowy")
       erb:snowy
       else
       erb:default
   end
end

