class SongsController < ApplicationController

  def index
  @songs = artist.songs
  end

private

def profile_params
      params.require(:song).permit(:name, :artists_id)
    end

end
