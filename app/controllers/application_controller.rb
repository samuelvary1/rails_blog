class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_filter { |c| Authorization.current_user = c.current_user }

  helper_method :current_user

  # figure out how to use this to automatically display a user on a comment
  

  protected

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  

  def validate_user
  	# unless current_user means "unless @current_user == true"
  	unless current_user
  		flash[:notice] = "Must be a registered user!"
  		redirect_to :log_in
  	end
  end
end
