class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  #force signout to prevent csrf attacks
  def handle_unverified_requests
  	sign_out
  	super
  end
end
