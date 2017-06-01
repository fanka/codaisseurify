class SongsController < ApplicationController
#  before_action :set_song, only: [:show, :edit, :update]

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
    respond_to do |format|
    format.html {new_artist_song_path(@artist)}
     format.js
    end
  end

def index
  @artist = Artist.find(params[:artist_id])
  @songs = @artist.songs
end

  def create
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.build(song_params)
  #  if
      @song.save
      respond_to do |format|
        format.html { redirect_to artist_path(@artist) }
        format.js
      end
  #  else
  #    render "new"
  #  end
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
    @artist = @song.artist
    @song.destroy!
    @songs = Song.where(artist_id: @artist.id)

    respond_to do |format|
      format.html { redirect_to artist_path(@artist) }
      format.js
    end
    #redirect_to root_path
  end

private


def song_params
    params.require(:song).permit(:name, :artist_id, :lyrics)
end


end
