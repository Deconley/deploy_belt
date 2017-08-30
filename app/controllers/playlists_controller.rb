class PlaylistsController < ApplicationController
  
  def add
    @playlist = Playlist.create(user_id: current_user.id, song_id: params[:id])
    redirect_to '/songs'
  end
end
