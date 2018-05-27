class Admin::DashboardController < AuthenticationController
  before_action :auto_signin

  def show
  end

end
