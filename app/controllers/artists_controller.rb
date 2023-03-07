class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]

  # GET /artists or /artists.json
  def index
    @artists = Artist.all
  end

  # GET /artists/1 or /artists/1.json
  def show
    render json: @artist, status: :ok, serializer: ArtistswithalbumsSerializer
  end

  # POST /artists or /artists.json
  def create
    @artist = Artist.create!(artist_params)
    render json: @artist, status: :created
  end

  # PATCH/PUT /artists/1 or /artists/1.json
  def update
      @artist.update!(artist_params)
      render json: @artist, status: :updated
  end

  # DELETE /artists/1 or /artists/1.json
  def destroy
    @artist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.permit(:name, :image)
    end
end
