class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :authenticate

  private
  def authenticate
    @current_user = User.find session[:user_id] if session[:user_id]
  end

  def authorise
    redirect_to new_user_path unless @current_user.present?
  end

end
