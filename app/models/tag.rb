require 'data_mapper'

class Tag
  include DataMapper::Resource

  property :id,     Serial
  property :tag,    String

end
