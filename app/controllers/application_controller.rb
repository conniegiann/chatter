class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :authenticate

  private
  def authenticate
    @current_user = User.find_by :id => session[:user] if session[:user]
  end

  def authorise
    redirect_to new_user_path unless @current_user.present?
  end

end
