class SongsController < ApplicationController

  get '/songs' do
    @all_songs = Song.all
    erb :"songs/index"
  end

  get "/songs/:id" do
    # binding.pry
    @song_selected = Song.find(params["id"])
    erb :"songs/show"
  end

end
