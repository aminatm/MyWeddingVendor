class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method def logged_in?
    session[:user_id]
  end

  helper_method def current_user
    User.find(session[:user_id]) if logged_in?
  end

  helper_method def is_vendor?
    !current_user.listings.empty?
  end

   def add_follower
    @listing = Listing.find(params[:id])
    @listing.users << current_user
  end
end
