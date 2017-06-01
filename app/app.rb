ENV['RACK_ENV'] ||= 'development'
require_relative 'data_mapper_setup'
require 'sinatra/base'

# require './app/models/link'
# require './database_cleaner'

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
    tag = Tag.create(tag: params[:tags])
    link = Link.create(title: params[:title], url: params[:url])
    link.tags << tag
    link.save
    redirect '/links'
  end
end
