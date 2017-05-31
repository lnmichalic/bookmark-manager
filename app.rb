require 'sinatra/base'
require './app/models/link'

class DatabaseApp < Sinatra::Base


  get '/' do
    'Bookmarks'
  end


  get '/links' do

    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :new_link
  end

  post '/links' do
    Link.new(params[:title], params[:url])
  end
end
