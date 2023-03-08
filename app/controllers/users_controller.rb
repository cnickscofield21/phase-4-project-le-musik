class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  # skip_before_action :authorized_user

  # GET /users or /users.json
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1 or /users/1.json
  def show
    render json: @current_user, status: :ok
  end

  # POST /users or /users.json
  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
      @user.update!(user_params)
      render json: @user, status: :updated
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # TODO: Remove .require(:user)
    def user_params
      params.permit(:username, :password, :admin)
    end
end
