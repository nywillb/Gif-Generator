require 'bundler'
require './models/model.rb'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/translate' do
    puts ""
    puts params[:text]
    puts "==================================================="
    text = params[:text].split(" ")
    text.each do |value|
      puts value
      result = Giphy.translate(value)
      puts result[0]
    end
    puts""
  end
end

