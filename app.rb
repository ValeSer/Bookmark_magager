require 'sinatra/base'
require './lib/bookmark.rb'

class Bookmark_manager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    # Print the ENV variable
      p ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks'
  end

  run! if app_file == $0

end
