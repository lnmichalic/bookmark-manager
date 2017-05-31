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

end
