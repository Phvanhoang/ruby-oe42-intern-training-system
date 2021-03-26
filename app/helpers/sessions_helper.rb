module SessionsHelper
  def log_in user
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def logged_in_user_as_trainer?
    current_user.trainer?
  end

  def logged_in_user_as_trainee?
    current_user.trainee?
  end
end
