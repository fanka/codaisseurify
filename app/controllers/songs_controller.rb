class SongsController < ApplicationController

  def index
  @songs = artist.songs
  end


end
