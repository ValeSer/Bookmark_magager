require 'sinatra/base'

class Bookmark_manager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = [
      "http://www.google.com",
      "http://www.facebook.com"
    ]
    erb :'bookmarks'
  end

  run! if app_file == $0

end
