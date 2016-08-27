class ArtistsController < ApplicationController

  def index
    @artists = Artist.order(params[:sort])
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
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

end
