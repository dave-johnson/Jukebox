class AlbumsController < ApplicationController
    def all 
        ## Need to add extra code to handle by Artist. 
        if params[:order] == 'artist'
            @albums = Album.by_artist
        elsif params[:order] && (Album.column_names.include? params[:order])
            @albums = Album.order(params[:order])
        else
            @albums = Album.all
        end

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
