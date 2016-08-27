class SongsController < ApplicationController

  def index
    @artist = Artist.find(params[:artist_id])
    @songs = artist.songs
  end

  def show
    @artist = Artist.find(params[:artist_id])
    @song = Song.find(params[:id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)

    if @song.save
      redirect_to root_path
    else
      render 'new'
    end
  end

def destroy
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.find(params[:id])
  @song.destroy
end
  private

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end
