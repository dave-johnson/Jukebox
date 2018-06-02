class AlbumsController < ApplicationController
    def all 
        @artist = Artist.first
        @albums = @artist.albums
    end

    def create
        @artist = Artist.find(params[:artist_id])
        @album = @artist.albums.create(album_params)

        redirect_to artist_path(@artist)
    end

    private
        def album_params
            params.require(:album).permit(:title, :year, :condition, :rating)
        end
end
