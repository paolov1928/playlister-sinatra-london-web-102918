class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  # def genres
  #   self.songs.map{|song| song.genres }
  # end
end
