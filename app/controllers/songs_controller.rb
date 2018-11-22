class SongsController < ApplicationController

  get '/songs' do
    @all_songs = Song.all
    erb :"songs/index"
  end


  get "/songs/:slug" do
    @song_selected = Song.find_by_slug(params["slug"])
    binding.pry
    erb :"songs/show"
  end


end
