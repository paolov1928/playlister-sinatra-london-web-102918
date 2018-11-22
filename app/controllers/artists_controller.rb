class ArtistsController < ApplicationController


  get '/artists' do
    @all_artists = Artist.all
    erb :"artists/index"
  end

  get "/artists/:slug" do
    # binding.pry
    @artist_selected = Artist.find(params["slug"])
    erb :"artists/show"
  end
end
