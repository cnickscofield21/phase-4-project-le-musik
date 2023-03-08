class TracksController < ApplicationController
  before_action :set_track, only: %i[ show edit update destroy ]
  # skip_before_action :authorized_user

  # GET /tracks or /tracks.json
  def index
    @tracks = Track.all
    render json: @tracks, status: :ok
  end

  # GET /tracks/1 or /tracks/1.json
  def show
    render json: @track, status: :ok
  end

  # POST /tracks or /tracks.json
  def create
    @track = Track.create!(track_params)
    render json: @track, status: :created
  end

  # PATCH/PUT /tracks/1 or /tracks/1.json
  def update
  @track.update!(track_params)
  render json: @track, status: :updated
  end

  # DELETE /tracks/1 or /tracks/1.json
  def destroy
    @track.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_params
      params.permit(:track, :title, :duration, :year, :album_id, :artist_id)
    end
end
