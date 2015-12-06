require 'bundler'
require './models/model.rb'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/translate' do 
    
  end
end

