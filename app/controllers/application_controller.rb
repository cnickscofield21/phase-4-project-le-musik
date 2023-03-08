class ApplicationController < ActionController::Base
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  # https://github.com/twilio/authy-devise/issues/91 (bottom of page)
  # protect_from_forgery prepend: true, with: :exception
  skip_before_action :verify_authenticity_token
  # before_action :current_user
  # before_action :authorized_user

  def hello_world
    session[:count] = (session[:count] || 0) + 1
    render json: { count: session[:count] }
  end

  def current_user
    user = User.find_by(id:session[:user_id])
    user
  end

  def authorized_user
    @current_user = User.find_by(id:session[:user_id])
    render json: {error: "Not Authorized"}, status: :unauthorized unless @current_user
  end

  def render_unprocessable_entity(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end

  def render_not_found(error)
    #confiure the response to work with the error handleng we have on the frontend.
    render json: {errors: {error.model => "Not Found"}}, status: :not_found
  end

end