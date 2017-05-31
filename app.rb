require 'sinatra/base'

class DatabaseApp < Sinatra::Base


get '/' do
  'Bookmarks'
end


get '/links' do
  'BLAh'
end

end
