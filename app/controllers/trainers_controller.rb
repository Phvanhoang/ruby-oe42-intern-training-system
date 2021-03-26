class TrainersController < ApplicationController
  before_action :logged_in_user, :logged_in_user_as_trainer

  def logged_in_user_as_trainer
    return if current_user.trainer?

    flash[:warning] = t("no_permissions_allowed")
    redirect_to root_path
  end
end
