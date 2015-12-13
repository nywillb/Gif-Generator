require 'bundler'
require './models/model.rb'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/translate' do
    text = params[:text].split(" ")
    @resultUrls=[]
    text.each do |value|
      result = Giphy.search(value)
      if result.length == 0
        @resultUrls.push(value)
      else
        @resultUrls.push("http://i.giphy.com/" + result[rand(0...result.length)].id + ".gif")
      end
      # # result = "http://i.giphy.com/" + Giphy.search(value)[0
      # puts result
      # # .id + ".gif"
      # # @resultUrls.push(url)
    end
    erb :results
  end
end
