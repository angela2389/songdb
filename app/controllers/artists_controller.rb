class ArtistsController < ApplicationController
  before_action :set_song, only: [:destroy]

  def index
    @artists = Artist.order(params[:sort])
    @songs = Song.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  def show
    @artist = Artist.find(params[:id])
    @songs = Song.all
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
  end

  def destroy_all
    @artist = Artist.find(params[:id])
    Song.destroy_all(artist_id: @artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
