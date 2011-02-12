class Post
  include DataMapper::Resource

  property :id,         Serial    
  property :title,      String    
  property :body,       Text      
  property :created_at, DateTime  
  
  
 validates_presence_of :title
 # validates_presence_of :body
  #validates_length_of :body, :minimum => 3
  
end

get '/' do
    haml :index
end