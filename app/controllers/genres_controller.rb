class GenresController < ApplicationController

  get '/genres' do
    @all_genres = Genre.all
    erb :"genres/index"
  end

  get "/genres/:slug" do
    # binding.pry
    @genre_selected = Genre.find(params["slug"])
    erb :"genres/show"
  end

end
