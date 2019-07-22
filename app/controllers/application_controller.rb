class ApplicationController < ActionController::Base

  helper_method :logged_in?
  helper_method :current_user

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    !current_user.nil?
  end

  def rememeber
  end

  def forget
  end

  def current_user
    user_id = session[:user_id]
    # debugger
    if(@current_user = User.find_by(id: user_id))
      @current_user
    else
      nil
    end
  end



end
