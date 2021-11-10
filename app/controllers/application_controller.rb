class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:notice] = "Youre Not Allowed To Perform This Action"
    redirect_to root_path
  end
end
