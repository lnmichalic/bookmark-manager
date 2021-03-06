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
    link = Link.create(title: params[:title], url: params[:url])
    params[:tags].split.each do |tag|
      link.tags << Tag.first_or_create(tag: tag)
    end
    link.save
    redirect '/links'
  end

  get '/tags/:tag' do
    tag = Tag.first(tag: params[:tag])
    @links = tag ? tag.links : []
    erb :links
  end

end
