class SongsController < ApplicationController

  def index
    @artist = Artist.find(params[:artist_id])
    @songs = Song.all
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

    respond_to do |format|
      if @song.save
        format.html { redirect_to artist_path(@artist.id) }
        format.js # render songs/create.js.erb
      else
        render 'new'
      end
    end
  end

def destroy
  @artist = Artist.find(params[:artist_id])
  @song = Song.find(params[:id])
  @song.destroy

  respond_to do |format|
    if @song.destroy
    format.html {redirect_to artist_path(@artist.id) }
    format.js
    end
  end
end
  private

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end
