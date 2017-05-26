class SongsController < ApplicationController

  def index
  @songs = artist.songs
  end

  def new
    @song = Song.new
   end


  def create
  @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render "new"
    end
  end

private

def profile_params
      params.require(:song).permit(:name, :artists_id)
    end

end
