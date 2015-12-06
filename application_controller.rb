require 'bundler'
require './models/model.rb'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/translate' do
    puts params[:text]
    text = params[:text].split(" ")
    text.each do |value|
      puts value
    end
  end
end

