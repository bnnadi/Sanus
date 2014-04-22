class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :full_name
    devise_parameter_sanitizer.for(:account_update) << :avatar
  end
  
  def set_current_user
    User.current_user = User.find_by_id(session[:user_id])
  end 
  
  FoodInfo.establish_connection(:fat_secret, :key => '968de06cc1944b5aa1e2f27bafc36d0a', :secret => 'd3d0943e9c1a43a5b32a40855e635553')
  
end
