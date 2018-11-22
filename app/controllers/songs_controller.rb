class SongsController < ApplicationController

  get '/songs' do
    @all_songs = Song.all
    erb :"songs/index"
  end



end
