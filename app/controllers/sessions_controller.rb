class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      render json: user, status: :ok
    else
      render json: {error: "Invalid username and/or password"}, status: :unauthorized
    end
  end

  # def destroy

  # end
end