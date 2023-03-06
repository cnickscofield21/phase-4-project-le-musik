class AlbumsController < ApplicationController
  before_action :set_album, only: %i[ show edit update destroy ]

  # GET /albums or /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1 or /albums/1.json
  def show
    @album = Album.find(params[:id])
    render json: @album, status: :ok
  end

  # POST /albums or /albums.json
  def create
    @album = Album.create!(album_params)
    render json: @album, status: :created
  end

  # PATCH/PUT /albums/1 or /albums/1.json
  def update
      @album.update!(album_params)
      render json: @album, status: :updated
  end

  # DELETE /albums/1 or /albums/1.json
  def destroy
    @album.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_params
      params.permit(:title, :year, :image)
    end
end
