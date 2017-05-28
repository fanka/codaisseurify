class ArtistsController < ApplicationController
before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def show
  @artist = Artist.find(params[:id])
  end



  def new
    @artist = Artist.new
   end


  def create
  @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render "new"
    end
  end

  def edit
  @artist = Artist.find(params[:id])
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to root_path
  end

  private

  def set_artist
      @artist = Artist.find(params[:id])
    end

  def artist_params
        params.require(:artist).permit(:name, :image_url)
      end


end
