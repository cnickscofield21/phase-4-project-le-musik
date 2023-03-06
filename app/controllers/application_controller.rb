class ApplicationController < ActionController::Base
  # https://github.com/twilio/authy-devise/issues/91 (bottom of page)
  # protect_from_forgery prepend: true, with: :exception
  skip_before_action :verify_authenticity_token

end