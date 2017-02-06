require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  
  post '/outcome' do
    #pull info out of params hash
    gender=params[:gender]
    shade=params[:shade]
    focus=params[:focus]
#     gender, focus, shade=params[outfit]
    @result=outfit_chooser(gender, focus, shade)
    #@result=["https://cdnb.lystit.com/photos/dillards/504418358-White-689961f8-.jpeg", "http://www.flightclub.com/media/catalog/product/cache/1/image/800x570/9df78eab33525d08d6e5fb8d27136e95/a/i/air-jordan-6-retro-carmine-white-carmine-black-011920_1.png", "https://pics.ae.com/is/image/aeo/0119_3980_915_f"]
    @holder0=@result[0]
    @holder1=@result[1]
    @holder2=@result[2]
    
    erb :results
  end
  end