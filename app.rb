require 'pry'
require './config/environment'


class TestApp < Sinatra::Base
  #put your route handlers here
  get '/about' do
    erb :"about"
  end

  get '/hello' do
    @name = params[:name]
    erb :"hello"
  end

  post '/' do
    "ok"
  end

  get '/' do
    "ok"
  end
end
