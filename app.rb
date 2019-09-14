require 'sinatra/base'
require './lib/bookmark'

class Bookmark_manager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/add' do
    erb :creating_bookmarks
  end

  post '/add' do
    Bookmark.add(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
