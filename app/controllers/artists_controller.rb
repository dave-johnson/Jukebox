class ArtistsController < ApplicationController
    def index
        if params[:order] && (Artist.column_names.include? params[:order])
            @artists = Artist.order(params[:order])
        else
            @artists = Artist.all
        end
        @show_albums = true if params[:show_albums] == "true"

        respond_to do |format|
            format.html
            format.csv {
                send_data @artists.to_csv, filename: "artists-#{Date.today}.csv" 
            }
        end
    end

    def edit
        @artist = Artist.find(params[:id])
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
            redirect_to artists_path()
        else
            render 'new'
        end
    end

    def update
        @artist = Artist.find(params[:id])
        if @artist.update(artist_params)
            redirect_to @artist
        else
            render 'edit'
        end
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy

        redirect_to artists_path
    end

    private
        def artist_params
            params.require(:artist).permit(:name, :genre, :note)
        end

end
