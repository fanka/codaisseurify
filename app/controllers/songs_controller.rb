class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]




  def index
  @songs = @artist.songs
  end

  def new
@artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build

   end


  def create
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.build(song_params)
    if @song.save
      redirect_to @artist
    else
      render "new"
    end
  end

  def show

      @song = Song.find(params[:id])
  end

  def edit

    @song = Song.find(params[:id])

  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to root_path, notice: "Song successfully updated"
    else
      render :edit
    end
  end


  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to root_path
  end

private


def set_song
@song = Song.find(params[:id])

end

def song_params
      params.require(:song).permit(:name, :artist_id, :lyrics)
end


end
