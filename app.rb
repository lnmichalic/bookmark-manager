require 'sinatra/base'
require './app/models/link'
require 'database_cleaner'

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
    Link.create(title: params[:title], url: params[:url])
    redirect '/links'
  end
end
